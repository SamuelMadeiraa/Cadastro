class Aluno < ApplicationRecord
  has_many :aluno_disciplinas
  has_many :disciplinas, through: :aluno_disciplinas
  belongs_to :turma
  
  validates :nome_completo, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
  validates :data_nascimento, presence: true
  validates :turma_id, presence: true

  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }
  scope :filter_by_name, -> (query) { where("nome_completo ILIKE ?", "%#{query}%") }

  private

  def cpf_deve_ser_valido
    unless CPF.valid?(cpf)
      errors.add(:cpf, "não é válido")
    end
  end
end
