class Disciplina < ApplicationRecord
  has_many :matriculas
  has_many :alunos, through: :matriculas, foreign_key: :aluno_id, class_name: 'aluno'
  has_and_belongs_to_many :professores
  
  validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma disciplina com esse nome" }
end
