class CreateDisciplinaProfessors < ActiveRecord::Migration[7.1]
  def change
    create_table :disciplina_professors do |t|
      t.references :disciplina, null: false, foreign_key: true

      t.timestamps
    end
  end
end
