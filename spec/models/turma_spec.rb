require "rails_helper"

RSpec.describe Turma, type: :model do
  context "Atributos necessários para criar nova turma" do
    it 'Criando nova turma' do
      turma = FactoryBot.create(:turma)
      expect(turma).to be_valid
    end

    it 'Retorna 404 se não possuir turma' do
      turma = new(:turma, turma:nil)
      expect(turma).to_not be_valid
    end

    it 'Retorna 404 se não possuir professor' do
      turma = new(:turma, professor_id:nil)
      expect(turma).to_not be_valid
    end
  end
end
