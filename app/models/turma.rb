class Turma < ApplicationRecord
 has_many :professors
 has_many :matriculas
has_many :alunos, through: :matriculas

      validates :turma, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma aluno com esse nome" }

end
