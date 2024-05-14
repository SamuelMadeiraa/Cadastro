require 'rails_helper'

RSpec.describe Professor, type: :model do
  describe "Atributos necessários para criação de novo professor" do
    it "Professor deve ter um campo de nome completo" do
      professor = Professor.new
      expect(professor).to_not be_valid
      expect(professor.errors[:nome_completo]).to include("can't be blank")
    end

    it "Professor deve ter um campo de aniversário" do
      professor = Professor.new
      expect(professor).to_not be_valid
      expect(professor.errors[:aniversario]).to include("can't be blank")
    end

    it "Professor deve ter um campo de CPF" do
      professor = Professor.new
      expect(professor).to_not be_valid
      expect(professor.errors[:cpf]).to include("can't be blank")
    end

    it "Professor deve ter um campo de email" do
      professor = Professor.new
      expect(professor).to_not be_valid
      expect(professor.errors[:email]).to include("can't be blank")
    end

    it "Professor deve ter um campo de turma" do
      professor = Professor.new
      expect(professor).to_not be_valid
      expect(professor.errors[:turma_id]).to include("can't be blank")
    end
  end
end
