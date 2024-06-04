require 'rails_helper'

RSpec.describe "Turmas", type: :request do
  describe "GET /index" do
    it "assigns @turmas" do
      turma = turma.create
      get :index
      expect(assigns(:turmas)).to eq([turma])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  end
