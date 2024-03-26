class CreateProfessors < ActiveRecord::Migration[7.1]
  def change
    create_table :professors do |t|
      t.string :nomecompleto
      t.string :cpf
      t.date :aniversario

      t.timestamps
    end
  end
end
