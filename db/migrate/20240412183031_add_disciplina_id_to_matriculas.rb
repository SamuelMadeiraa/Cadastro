class AddDisciplinaIdToMatriculas < ActiveRecord::Migration[7.1]
  def change
    add_column :matriculas, :disciplina_id, :integer, foreign_key:true

  end
end
