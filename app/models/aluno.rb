# models/aluno.rb
class Aluno < ApplicationRecord
  belongs_to :turma
  has_many :Disciplina
  has_many :matriculas

  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) nome com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um aluno(a) com esse email" }

  scope :por_materia_e_turma, -> (materia_id, turma_id) {
    joins(matriculas: :turma).where(turmas: { disciplina_id: materia_id, id: turma_id })
  }


end