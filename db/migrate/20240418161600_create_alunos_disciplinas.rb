class CreateAlunosDisciplinas < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos_disciplinas do |t|
      t.references :aluno, null: false, foreign_key: true
      t.references :disciplina, null: false, foreign_key: true

      t.timestamps
    end
  end
end
