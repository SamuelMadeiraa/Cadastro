class AddProfessorToDisciplinaProfessors < ActiveRecord::Migration[7.1]
  def change
    add_reference :disciplina_professors, :professor, null: false, foreign_key: true

  end
end
