# spec/models/aluno_spec.rb
require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it "is valid with valid attributes" do
    aluno = Aluno.new(nome_completo: "João Silva", data_nascimento: Date.new(2000, 1, 1), turma_id: 1, email: "joao@example.com", disciplina_id: 1)
    expect(aluno).to be_valid
  end
end

