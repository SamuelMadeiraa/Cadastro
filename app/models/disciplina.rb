class Disciplina < ApplicationRecord
    belongs_to :materia
  belongs_to :turma
  has_many :matriculas

    validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma aluno com esse nome" }
end
