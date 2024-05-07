class AddProfessorIdToTurmas < ActiveRecord::Migration[7.1]
  def change
    add_column :turmas, :professor_id, :integer
  end
end
