require 'rails_helper'

RSpec.describe ProfessorsController, type: :controller do
  context "Recebe 200 na requisição se tiver parâmetro nome completo" do
    it "Recebe 200 na requisição" do
      params = { nome_completo: "Nome Completo" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro nome completo" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro email" do
    it "Recebe 200 na requisição" do
      params = { email: "fuladodetal@gmail.com" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro email" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro CPF" do
    it "Recebe 200 na requisição" do
      params = { cpf: "438.708.817-63" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro  CPF" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro turma_id" do
    it "Recebe 200 na requisição" do
      params = { turma_id: "111" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro turma_id" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro data nascimeto" do
    it "Recebe 200 na requisição" do
      params = { data_nascimento: "13/05/2000" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro data nascimeto" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end

  context "Recebe 200 na requisição se tiver parâmetro disciplina id" do
    it "Recebe 200 na requisição" do
      params = { disciplina_ids: "5" }
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end
  
  context "Recebe 404 na requisição se não tiver parâmetro disciplina id" do
    it "Recebe 404 na requisição" do
      get :index
      expect(response.status).to eq(404)
    end
  end
end
