class AddProfessorIdToTurmas < ActiveRecord::Migration[7.1]
  def change
    add_reference :turmas, :professor, null: false, foreign_key: true

  end
end
