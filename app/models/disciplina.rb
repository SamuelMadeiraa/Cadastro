class Disciplina < ApplicationRecord
  has_many :turmas

    validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma aluno com esse nome" }
end
