class AddDisciplinaIdToProfessors < ActiveRecord::Migration[7.1]
  def change
    add_reference :professors, :disciplina, null: true, foreign_key: true
  end
end
