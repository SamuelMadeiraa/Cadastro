class AddDisciplinaIdToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_column :alunos, :disciplina_id, :string
  end
end
