# spec/models/disciplina_professor_spec.rb
require 'rails_helper'

RSpec.describe DisciplinaProfessor, type: :model do
  describe "associações" do
    it { should belong_to(:professor) }
    it { should belong_to(:disciplina) }
  end
end
