class CreateProfessors < ActiveRecord::Migration[7.1]
  def change
    create_table :professors do |t|
      t.string :nome_completo
      t.string :aniversario
      t.string :cpf
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
