class Professor < ApplicationRecord
  has_many :disciplina_professores
  has_many :disciplinas, through: :disciplina_professores
  has_many :turmas

  
  validates :nome_completo, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  def cpf_deve_ter_11_digitos
    unless cpf.to_s.length == 11
      errors.add(:cpf, "deve conter exatamente 11 dígitos")
    end
  end

end