require 'rails_helper'

RSpec.describe Turma, type: :model do
  describe "Atributos necessários para criação de nova turma" do
    it "Turma deve ter um campo de turma" do
      Turma = Turma.new
      expect(Turma).to_not be_valid
      expect(Turma.errors[:turma]).to include("can't be blank")
    end
  end
end