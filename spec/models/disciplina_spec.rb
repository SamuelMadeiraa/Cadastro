# spec/models/disciplina_spec.rb
require 'rails_helper'

RSpec.describe Disciplina, type: :model do
 
  it "deveria ter um campo nome" do
    expect(Disciplina.new).to respond_to(:nome)
  end


  it "deveria criar disciplina com atributos válidos" do
    expect {
      Disciplina.create(nome: "Matemática")
    }.to change(Disciplina, :count).by(1)
  end
end

