class Turma < ApplicationRecord
 has_many :aluno

      validates :nome, uniqueness: { case_sensitive: false, on: :create, message: "já existe uma aluno com esse nome" }

end
