class CreateMatriculas < ActiveRecord::Migration[7.1]
  def change
    create_table :matriculas do |t|
      t.string :numero_matricula
      t.references :aluno, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
