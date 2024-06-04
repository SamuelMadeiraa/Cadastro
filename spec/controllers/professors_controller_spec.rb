require "rails_helper"

RSpec.describe ProfessorsController, type: :controller do
  let!(:professor) { create(:professor) }

  describe "GET #index" do
    it "returns 200 success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns 200 success" do
      get :show, params: { id: professor.id }
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
      it "creates a new professor" do
        expect {
          post :create, params: { professor: attributes_for(:professor) }
        }.to change(Professor, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "does not save the new professor" do
        expect {
          post :create, params: { professor: attributes_for(:professor, nome_completo: nil) }
        }.to_not change(Professor, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { professor: attributes_for(:professor, nome_completo: nil) }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the professor" do
        patch :update, params: { id: professor.id, professor: { nome_completo: "New Name" } }
        professor.reload
        expect(professor.nome_completo).to eq("New Name")
      end

      it "redirects to the updated professor" do
        patch :update, params: { id: professor.id, professor: { nome_completo: "New Name" } }
        expect(response).to redirect_to(professor)
      end
    end

    context "with invalid attributes" do
      it "does not update the professor" do
        original_name = professor.nome_completo
        patch :update, params: { id: professor.id, professor: { nome_completo: nil } }
        professor.reload
        expect(professor.nome_completo).to eq(original_name)
      end

      it "re-renders the :edit template" do
        patch :update, params: { id: professor.id, professor: { nome_completo: nil } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the professor" do
      expect {
        delete :destroy, params: { id: professor.id }
      }.to change(Professor, :count).by(-1)
    end

    it "redirects to professors#index" do
      delete :destroy, params: { id: professor.id }
      expect(response).to redirect_to(professors_path)
    end
  end
end
