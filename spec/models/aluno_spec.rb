require "rails_helper"

RSpec.describe Aluno, type: :model do
  context "Atributos necessários para criar novo(a) aluno(a)" do
    it 'Criando novo(a) aluno(a)' do
      aluno = FactoryBot.create(:aluno)
      expect(aluno).to be_valid
    end

    it 'Retorna inválido se não possuir nome completo' do
      aluno = FactoryBot.build(:aluno, nome_completo: nil)
      expect(aluno).to_not be_valid
    end

    it 'Retorna inválido se não possuir cpf' do
      aluno = FactoryBot.build(:aluno, cpf: nil)
      expect(aluno).to_not be_valid
    end

    it 'Retorna inválido se não possuir email' do
      aluno = FactoryBot.build(:aluno, email: nil)
      expect(aluno).to_not be_valid
    end

    it 'Retorna inválido se não possuir data de nascimento' do
      aluno = FactoryBot.build(:aluno, data_nascimento: nil)
      expect(aluno).to_not be_valid
    end

    it 'Retorna inválido se não possuir turma' do
      aluno = FactoryBot.build(:aluno, turma_id: nil)
      expect(aluno).to_not be_valid
    end
  end
end
