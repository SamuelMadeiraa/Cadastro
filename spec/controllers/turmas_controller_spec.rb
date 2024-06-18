require "rails_helper"

RSpec.describe TurmasController, type: :controller do
  let!(:turma) { create(:turma) }

  describe "GET #index" do
    it "returns 200 success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns 200 success" do
      get :show, params: { id: turma.id }
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
      it "creates a new turma" do
          turma = FactoryBot.create(:turma)  
          expect(turma).to be_valid
      end
    end

    context "with invalid attributes" do
      it "does not save the new turma" do
        expect {
          post :create, params: { turma: attributes_for(:turma, turma: nil) }
        }.to_not change(Turma, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { turma: attributes_for(:turma, turma: nil) }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the turma" do
        patch :update, params: { id: turma.id, turma: { turma: "New Name" } }
        turma.reload
        expect(turma.turma ).to eq("New Name")
      end

      it "redirects to the updated turma" do
        patch :update, params: { id: turma.id, turma: { turma: "New Name" } }
        expect(response).to redirect_to(turma)
      end
    end

    context "with invalid attributes" do
      it "does not update the turma" do
        original_name = turma.turma
        patch :update, params: { id: turma.id, turma: { turma: nil } }
        turma.reload
        expect(turma.turma ).to eq(original_name)
      end

      it "re-renders the :edit template" do
        patch :update, params: { id: turma.id, turma: { turma: nil } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the turma" do
      expect {
        delete :destroy, params: { id: turma.id }
      }.to change(Turma, :count).by(-1)
    end

    it "redirects to turmas#index" do
      delete :destroy, params: { id: turma.id }
      expect(response).to redirect_to(turmas_path)
    end
  end
end
