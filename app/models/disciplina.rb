class Disciplina < ApplicationRecord
  belongs_to :aluno
  belongs_to :professor
  belongs_to :turma
end
