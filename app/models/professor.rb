class Professor < ApplicationRecord
  has_many :disciplina_professores
  has_many :disciplinas, through: :disciplina_professores
  has_many :turmas
  
  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse email" }
  validate :cpf_deve_ter_11_digitos

  private

  def cpf_deve_ter_11_digitos
    unless cpf.to_s.length == 11
      errors.add(:cpf, "deve conter exatamente 11 dígitos")
    end
  end

end