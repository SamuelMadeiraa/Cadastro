class Turma < ApplicationRecord
    has_many :alunos
    has_many :Disciplinas
    belongs_to :professor
end