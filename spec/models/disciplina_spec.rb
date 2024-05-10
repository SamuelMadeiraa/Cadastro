require 'rails_helper'
require_relative '../../app/models/disciplina'

RSpec.describe Disciplina, type: :model do
    it "deve validar a presença do nome" do
      disciplina = Disciplina.new
      expect(disciplina).not_to be_valid
      expect(disciplina.errors[:nome]).to include("can't be blank")
  
      disciplina.nome = nil
      expect(disciplina).to be_valid
    end
  end