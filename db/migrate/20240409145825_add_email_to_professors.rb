class AddEmailToProfessors < ActiveRecord::Migration[7.1]
  def change
    add_column :professors, :email, :string
  end
end
