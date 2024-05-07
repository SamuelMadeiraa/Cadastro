class Turma < ApplicationRecord
    has_many :alunos
    has_many :disciplinas
    belongs_to :professor
end 