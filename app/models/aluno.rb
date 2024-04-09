class Aluno < ApplicationRecord
  belongs_to :turma, optional: true
   

  end

