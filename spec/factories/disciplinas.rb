# spec/factories/disciplinas.rb
FactoryBot.define do
  factory :disciplina do
    nome { "Disciplina #{Faker::Educator.subject} }" }
  end
end
