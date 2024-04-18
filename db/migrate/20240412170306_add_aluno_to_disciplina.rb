class AddDisciplinaIdToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_column :alunos, :disciplina_id, :integer, foreign_key:true
  end
end
