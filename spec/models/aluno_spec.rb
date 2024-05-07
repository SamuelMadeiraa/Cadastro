require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it 'Validação inicial ' do 
    expect('hello').to eq('hello')
    end

    it 'validação que vai dar erro ' do 
      expect(1).to eq('hello')
      end
end
