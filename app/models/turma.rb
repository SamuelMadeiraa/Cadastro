class Turma < ApplicationRecord
      has_and_belongs_to_many :professors
      has_many :matriculas
      has_many :alunos, through: :matriculas
end