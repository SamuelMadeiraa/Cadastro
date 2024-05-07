class CreateDiscplinaAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :discplina_alunos do |t|
      t.references :aluno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
