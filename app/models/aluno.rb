class Aluno < ApplicationRecord
  belongs_to :turma
  has_many :disciplinas, through: :matriculas

  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) nome com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse email" }



end