class Professor < ApplicationRecord
  has_and_belongs_to_many :disciplinas
  has_and_belongs_to_many :turmas
  
  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse email" }
  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }
  validate :cpf_deve_ter_11_digitos

  private

  def cpf_deve_ter_11_digitos
    unless cpf.to_s.length == 11
      errors.add(:cpf, "deve conter exatamente 11 dígitos")
    end
  end

end