# spec/factories/turmas.rb
FactoryBot.define do
  factory :turma do
    turma { "Turma #{Faker::Number.number(digits: 3)}" }
    professor # Chama a fábrica de professor automaticamente
  end
end
