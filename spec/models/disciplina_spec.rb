require 'rails_helper'

RSpec.describe Disciplina, type: :model do
context "Atributos necessarios para criar nova disciplina"
  context 'Deve possuir possuir nome' do
    it 'Return 200 ' do
      disciplina = build(:disciplina)
      expect(disciplina).to be_valid
    end
  end

  it 'Return 404 se nao possuir nome' do
    disciplina = build(:disciplina, name:nil)
    expect(disciplina).to_not be_valid
  end
end