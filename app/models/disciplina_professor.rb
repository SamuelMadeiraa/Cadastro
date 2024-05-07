class DisciplinaProfessor < ApplicationRecord
  belongs_to :professor
  belongs_to :disciplina
end