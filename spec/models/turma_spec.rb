require 'rails_helper'

RSpec.describe Turma, type: :model do
  it "deveria ter um campo turma" do
    expect(Turma.new).to respond_to(:turma)
  end
end
