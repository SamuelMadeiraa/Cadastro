# spec/models/disciplina_aluno_spec.rb
require 'rails_helper'

RSpec.describe DiscplinaAluno, type: :model do
  describe "associações" do
    it { should belong_to(:aluno) }
  end
end
