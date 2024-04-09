class Professor < ApplicationRecord
  belongs_to :turma
  validates :cpf, presence: true 
  
  validates :cpf, presence: true, cpf: true

end

