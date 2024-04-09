class AddEmailToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_column :alunos, :email, :string
  end
end
