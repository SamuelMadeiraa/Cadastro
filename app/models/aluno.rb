# models/aluno.rb
class Aluno < ApplicationRecord
  has_and_belongs_to_many :disciplinas

  has_many :matriculas
  has_and_belongs_to_many :disciplinas
  belongs_to :turma
  
  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }
  validate :cpf_deve_ter_11_digitos

  private

  def cpf_deve_ter_11_digitos
    unless cpf.to_s.length == 11
      errors.add(:cpf, "deve conter exatamente 11 dígitos")
    end
  end

  scope :filter_by_name, -> (query) { where("nome_completo LIKE ?", "%#{query}%") }



end

