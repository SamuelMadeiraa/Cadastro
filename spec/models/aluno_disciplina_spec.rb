# spec/models/aluno_disciplina_spec.rb
require 'rails_helper'

RSpec.describe AlunoDisciplina, type: :model do
  describe "associações" do
    it { should belong_to(:disciplina) }
    it { should belong_to(:aluno) }
  end
end
