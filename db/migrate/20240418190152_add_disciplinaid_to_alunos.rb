class AddDisciplinaidToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_reference :alunos, :disciplina, null: true, foreign_key: true
  end
end
