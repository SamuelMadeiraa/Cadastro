class AddAlunoIdToTurmas < ActiveRecord::Migration[7.1]
  def change
    add_reference :turmas, :aluno, null: false, foreign_key: true

  end
end
