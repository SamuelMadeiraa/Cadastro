class Aluno < ApplicationRecord
  has_many :aluno_disciplinas
  has_many :disciplinas, through: :aluno_disciplinas
  belongs_to :turma

  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }
  validate :cpf_deve_ter_11_digitos

  scope :filter_by_name, -> (query) { where("nome_completo LIKE ?", "%#{query}%") }

  private

  def cpf_deve_ter_11_digitos
    unless cpf.to_s.length == 11
      errors.add(:cpf, "deve conter exatamente 11 dígitos")
    end
  
  end
end
