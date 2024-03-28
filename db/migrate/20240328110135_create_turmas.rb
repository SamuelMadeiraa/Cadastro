class CreateTurmas < ActiveRecord::Migration[7.1]
  def change
    create_table :turmas do |t|
      t.string :codigo_turma
      t.integer :aluno_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
