class Turma < ApplicationRecord
  has_many :matriculas
  has_many :alunos, through: :matriculas
  has_many :professores
  belongs_to :disciplina

      validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma aluno com esse nome" }

end
