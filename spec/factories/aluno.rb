# spec/factories/alunos.rb
FactoryBot.define do
    factory :aluno do
      nome_completo { 'João da Silva' }
      cpf { '12345678901' }
      data_nascimento { Date.new(2000, 1, 1) }
      email { 'joao@example.com' }
      turma_id { 1 }
      disciplina_id { 1 }
    end
  end
  