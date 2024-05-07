require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it 'Validação inicial ' do 
    expect('hello').to eq('hello')
    end

    it 'validação que vai dar erro ' do 
      hell = "batata"
      expect(hell).not_to eql('hello')
      end
end
