require 'rails_helper'

RSpec.describe Aluno, type: :model do
  describe "Atributos necesarios para criação de novo Aluno"
  it "Aluno deve ter uma campo de nome completo" do
    expect(Aluno.new).to respond_to(:nome_completo)
  end
  it "Aluno deve ter uma campo de aniversario" do
    expect(Aluno.new).to respond_to(:data_nascimento)
  end
  it "Aluno deve ter uma campo de CPF" do
    expect(Aluno.new).to respond_to(:cpf)
  end
  it "Aluno deve ter uma campo de email" do
    expect(Aluno.new).to respond_to(:email)
  end
  it "Aluno deve ter uma campo de turma" do
    expect(Aluno.new).to respond_to(:turma_id)
  end
  it "Aluno deve ter uma campo de disciplina" do
    expect(Aluno.new).to respond_to(:disciplina_id)
  end
end
