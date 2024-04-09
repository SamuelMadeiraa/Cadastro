class AddTurmaRefToProfessor < ActiveRecord::Migration[7.1]
  def change
    add_reference :professors, null: false, foreign_key: true
  end
end
