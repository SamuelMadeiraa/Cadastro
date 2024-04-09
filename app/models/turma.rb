class Turma < ApplicationRecord
    has_and_belongs_to_many :professores
  end

  