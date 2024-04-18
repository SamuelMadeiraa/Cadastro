# models/aluno.rb
class Aluno < ApplicationRecord
  has_many :matriculas
  has_many :disciplinas, through: :matriculas
  belongs_to :turma


  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) nome com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse email" }

  def self.filter_by_name(name)
    where("nome_completo LIKE ?", "%#{name}%")
  end


end