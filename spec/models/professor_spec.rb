require 'rails_helper'

RSpec.describe Professor, type: :model do
  describe "Atributos necesarios para criação de novo professor" do
    it "Professor deve ter uma campo de nome completo" do
      expect(Professor.new).to respond_to(:nome_completo)
    end

    it "Professor deve ter uma campo de aniversario" do
      expect(Professor.new).to respond_to(:aniversario)
    end

    it "Professor deve ter uma campo de CPF" do
      expect(Professor.new).to respond_to(:cpf)
    end

    it "Professor deve ter uma campo de email" do
      expect(Professor.new).to respond_to(:email)
    end

    it "Professor deve ter uma campo de turma" do
      expect(Professor.new).to respond_to(:turma_id)
    end
  end
end
