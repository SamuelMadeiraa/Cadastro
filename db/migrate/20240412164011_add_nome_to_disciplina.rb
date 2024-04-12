class AddNomeToDisciplina < ActiveRecord::Migration[7.1]
  def change
    add_column :disciplinas, :nome, :string
  end
end
