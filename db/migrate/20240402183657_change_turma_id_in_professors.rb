class ChangeTurmaIdInProfessors < ActiveRecord::Migration[7.1]
  def change
    create_join_table :professors, :turmas

  end
end
