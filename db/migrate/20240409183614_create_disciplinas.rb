class CreateDisciplinas < ActiveRecord::Migration[7.1]
  def change
    create_table :disciplinas do |t|
      t.string :materia
      t.boolean :enabled
      t.references :aluno, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
