require 'rails_helper'


RSpec.describe TurmasController, type: :controller do
  context "Recebe 200 na requisição se tiver parâmetro turma" do
    it "Recebe 200 na requisição" do
      params = { turma: "311" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro turma" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro disciplina_id " do
    it "Recebe 200 na requisição" do
      params = { disciplina_id: 31 }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro nome disciplina_id" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro  professor_id" do
    it "Recebe 200 na requisição" do
      params = { professor_id: 1 }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro professor_id" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end
end
