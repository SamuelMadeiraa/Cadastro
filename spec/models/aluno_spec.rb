RSpec.describe Aluno, type: :model do
  it "testando nome" do
    aluno = Aluno.create(nome_completo: "Nome do Aluno", cpf: "12345678901", data_nascimento: Date.new(2000, 1, 1), turma_id: 1, email: "aluno@example.com", disciplina_id: 1)
    expect(aluno).to be_valid
  end
end
