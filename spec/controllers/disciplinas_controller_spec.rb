
  require "rails_helper"

RSpec.describe DisciplinasController, type: :controller do
  let!(:disciplina) { create(:disciplina) }

  describe "GET #index" do
    it "returns 200 success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns 200 success" do
      get :show, params: { id: disciplina.id }
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    it "returns 200 success" do
      get :new
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new disciplina" do
        disciplina = FactoryBot.create(:disciplina)  
        expect(disciplina).to be_valid
      end

  

    context "with invalid attributes" do
      it "does not save the new disciplina" do
        expect {
          post :create, params: { disciplina: attributes_for(:disciplina, nome: nil) }
        }.to_not change(Disciplina, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { disciplina: attributes_for(:disciplina, nome: nil) }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the disciplina" do
        patch :update, params: { id: disciplina.id, disciplina: { nome: "New Name" } }
        disciplina.reload
        expect(disciplina.nome).to eq("New Name")
      end

    end

    context "with invalid attributes" do
      it "does not update the disciplina" do
        original_name = disciplina.nome
        patch :update, params: { id: disciplina.id, disciplina: { nome: nil } }
        disciplina.reload
        expect(disciplina.nome).to eq(original_name)
      end

      it "re-renders the :edit template" do
        patch :update, params: { id: disciplina.id, disciplina: { nome: nil } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the disciplina" do
      expect {
        delete :destroy, params: { id: disciplina.id }
      }.to change(Disciplina, :count).by(-1)
    end

    it "redirects to DisciplinasController#index" do
      delete :destroy, params: { id: disciplina.id }
      expect(response).to redirect_to(disciplinas_path)
    end
  end
end
end