class CreateMatriculaDisciplinas < ActiveRecord::Migration[7.1]
  def change
    create_table :matricula_disciplinas do |t|
      t.references :aluno, null: false, foreign_key: true
      t.references :disciplinas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
