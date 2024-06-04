FactoryBot.define do
  factory :aluno do
    nome_completo { Faker::Movies::HarryPotter.character }
    data_nascimento { Faker::Date.between(from: '2004-01-01', to: '2004-02-01') }
    email { Faker::Internet.email(domain: 'gmail.com') }
    cpf { Faker::IdNumber.brazilian_citizen_number } # Atualizando de Faker::IDNumber para Faker::IdNumber
    association :turma
  end
end
