class Disciplina < ApplicationRecord
  has_and_belongs_to_many :alunos
  has_and_belongs_to_many :professores
  has_many :matriculas
  validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma disciplina com esse nome" }
end
