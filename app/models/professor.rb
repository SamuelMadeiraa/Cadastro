class Professor < ApplicationRecord
  belongs_to :turma

  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um professor(a) nome com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse email" }
end
