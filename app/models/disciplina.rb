class Disciplina < ApplicationRecord
  has_many :aluno_disciplinas
  has_many :alunos, through: :aluno_disciplinas
  
  has_many :disciplina_professores
  has_many :professores, through: :disciplina_professores
  
  validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma disciplina com esse nome" }
end
