# spec/models/professor_spec.rb
require "rails_helper"

RSpec.describe Professor, type: :model do
    context "Atributos necessarios para criar novo(a) professor(a)" do
    it 'Criando novo novo(a) professor(a)' do
      professor = FactoryBot.create(:professor)
      expect(professor).to be_valid
    end
    it 'Return 404 se nao possuir nome completo' do
        professor = build(:professor, nome_completo:nil    )
        expect(professor).to_not be_valid
      end
      it 'Return 404 se nao possuir aniversario' do
        professor = build(:professor,  aniversario:nil    )
        expect(professor).to_not be_valid
      end
      it 'Return 404 se nao possuir cpf' do
        professor = build(:professor, cpf:nil    )
        expect(professor).to_not be_valid
      end
      it 'Return 404 se nao possuir email' do
        professor = build(:professor, email:nil    )
        expect(professor).to_not be_valid
      end
      it 'Return 404 se nao possuir data_nascimento' do
        professor = build(:professor, data_nascimento: nil    )
        expect(professor).to_not be_valid
      end
      it 'Return 404 se nao possuir turma' do
        professor = build(:professor, turma_id:nil    )
        expect(professor).to_not be_valid
      end
  end
end



