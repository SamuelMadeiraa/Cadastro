class CreateAlunosDisciplinasJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos_disciplinas, id: false do |t|
      t.references :aluno, null: false, foreign_key: true
      t.references :disciplina, null: false, foreign_key: true
    end

    add_index :alunos_disciplinas, [:aluno_id, :disciplina_id], unique: true
  end
end
