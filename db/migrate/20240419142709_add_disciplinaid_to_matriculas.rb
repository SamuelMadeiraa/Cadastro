class AddDisciplinaidToMatriculas < ActiveRecord::Migration[7.1]
  def change
    add_reference :matriculas, :disciplina, null: false, foreign_key: true
  end
end
