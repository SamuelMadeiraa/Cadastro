require 'rails_helper'


RSpec.describe DisciplinasController, type: :controller do
  context "Recebe 200 na requisição se tiver parâmetro nome" do
    it "Recebe 200 na requisição" do
      params = { nome: "Redes" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro nome" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end
end
