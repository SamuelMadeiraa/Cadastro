class Turma < ApplicationRecord
  belongs_to :aluno
  belongs_to :professor
end
