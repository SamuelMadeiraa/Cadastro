class AddTurmaIdToTurma < ActiveRecord::Migration[7.1]
  def change
    add_reference :turmas, :turma, null: false, foreign_key: true

  end
end
