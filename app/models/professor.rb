class Professor < ApplicationRecord
  has_and_belongs_to_many :disciplinas, optional: true, foreign_key: :_id, class_name: 'aluno'
  belongs_to :turma

  validates :nome_completo, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse nome" }
  validates :cpf, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse CPF" }
  validates :email, uniqueness: { case_sensitive: false, message: "já existe um professor(a) com esse email" }


end