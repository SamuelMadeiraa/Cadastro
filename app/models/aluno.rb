class Aluno < ApplicationRecord
  belongs_to :turma
  belongs_to :professores
  belongs_to :disciplina

end