class Turma < ApplicationRecord
  has_many :matriculas
  has_many :alunos, through: :matriculas
  has_many :professores
  belongs_to :disciplina
end
