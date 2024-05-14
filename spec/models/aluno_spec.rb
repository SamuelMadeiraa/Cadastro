require 'rails_helper'

RSpec.describe Aluno, type: :model do
  describe "Atributos necessários para criação de novo Aluno" do
    it "Aluno deve ter um campo de nome completo" do
      Aluno = Aluno.new
      expect(Aluno).to_not be_valid
      expect(Aluno.errors[:nome_completo]).to include("can't be blank")
    end

    it "Aluno deve ter um campo de aniversário" do
      Aluno = Aluno.new
      expect(Aluno).to_not be_valid
      expect(Aluno.errors[:aniversario]).to include("can't be blank")
    end

    it "Aluno deve ter um campo de CPF" do
      Aluno = Aluno.new
      expect(Aluno).to_not be_valid
      expect(Aluno.errors[:cpf]).to include("can't be blank")
    end

    it "Aluno deve ter um campo de email" do
      Aluno = Aluno.new
      expect(Aluno).to_not be_valid
      expect(Aluno.errors[:email]).to include("can't be blank")
    end

    it "Aluno deve ter um campo de turma" do
      Aluno = Aluno.new
      expect(Aluno).to_not be_valid
      expect(Aluno.errors[:turma_id]).to include("can't be blank")
    end
  end

    context "Testando as associações"

    it { should have_many(:aluno_disciplinas) }
    it { should have_many(:disciplinas).through(:aluno_disciplinas) }
    it { should belong_to(:turma) }
end
