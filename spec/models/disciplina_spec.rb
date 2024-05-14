require 'rails_helper'

RSpec.describe Disciplina, type: :model do
  describe "Atributos necessários para criação de nova disciplina" do
    it "Disciplia deve ter um " do
      Disciplina = Disciplina.new
      expect(Disciplina).to_not be_valid
      expect(Disciplina.errors[:nome_completo]).to include("can't be blank")
    end
  end
end

   