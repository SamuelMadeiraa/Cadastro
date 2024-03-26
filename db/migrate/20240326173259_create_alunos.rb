class CreateAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos do |t|
      t.string :nome_completo
      t.string :cpf
      t.date :data_nascimento

      t.timestamps
    end
  end
end
