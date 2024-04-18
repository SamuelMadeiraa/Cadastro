class AddDisciplinaIdToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_column :alunos, :disciplina_id, :string, foreign_key:true
  end
end
