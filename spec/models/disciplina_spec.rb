require 'rails_helper'

RSpec.describe Disciplina, type: :model do
it "Disciplina deve ter campo nome" do
    expect(Disciplina.new).to respond_to(:nome)
  end
end
