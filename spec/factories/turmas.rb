FactoryBot.define do
  factory :turma do
    turma { "Turma #{Faker::Number.unique.number(digits: 3)}" }
    association :professor  # Assuming Turma belongs to Professor
  end
end
