# models/aluno.rb
class Aluno < ApplicationRecord
  has_and_belongs_to_many :disciplinas

  has_many :matriculas
  belongs_to :turma


  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) nome com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse email" }

  scope :filter_by_name, -> (query) { where("nome_completo LIKE ?", "%#{query}%") }



end