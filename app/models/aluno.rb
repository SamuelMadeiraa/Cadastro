# models/aluno.rb
class Aluno < ApplicationRecord
  has_and_belongs_to_many :disciplinas

  has_many :matriculas
  has_many :turmas, through: :matriculas
  

  scope :filter_by_name, -> (query) { where("nome_completo LIKE ?", "%#{query}%") }



end

