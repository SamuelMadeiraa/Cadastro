class Turma < ApplicationRecord
    has_many :alunos
    has_many :disciplinas
    belongs_to :professor

    validates :turma, presence: true
    validates :professor_id, presence: true
    
end 