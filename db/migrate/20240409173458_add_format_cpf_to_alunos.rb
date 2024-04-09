class AddFormatCpfToAlunos < ActiveRecord::Migration[7.1]
  def change
    add_column :alunos, :format_cpf, :string
  end
end
