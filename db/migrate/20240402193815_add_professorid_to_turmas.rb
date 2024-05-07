class AddProfessoridToTurmas < ActiveRecord::Migration[7.1]
  def change
    add_reference :turmas, :professor, foreign_key: true, null: true

  end
end
