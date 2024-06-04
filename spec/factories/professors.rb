# spec/factories/aluno.rb
FactoryBot.define do
  factory :professor do
    nome_completo { Faker::Name.name }
    aniversario { Faker::Date.birthday(min_age: 18, max_age: 65) }
    cpf { Faker::CPF.numeric }
    email { Faker::Internet.email }
    data_nascimento { Faker::Date.between(from: '1960-01-01', to: '2003-12-31') }
    turma_id { Faker::Number.between(from: 1, to: 100) }
  end
end
