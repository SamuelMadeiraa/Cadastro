require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it 'Validação inicial ' do 
    expect('hello').to eq('hello')
    end

    it 'validação que vai dar erro ' do 
      hello = "batata"
      expect(hello).not_to eql('hello')
      end
end
