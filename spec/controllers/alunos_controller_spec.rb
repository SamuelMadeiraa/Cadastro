

require "rails_helper"

RSpec.describe AlunosController, type: :controller do
  let!(:aluno) { create(:aluno) }

  describe "GET #index" do
    it "returns 200 success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns 200 success" do
      get :show, params: { id: aluno.id }
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
      it "creates a new aluno" do
        expect {
          post :create, params: { aluno: FactoryBot.create(:aluno)}
        }.to change(Aluno, :count).by(1)
      end
    end

    # context "Testando as requisições" do
    #   context "POST #create" do
    #   it 'Criando novo(a) aluno(a)' do
    #     aluno =  FactoryBot.create(:aluno)  
    #     expect(aluno).to be_valid
    #   end
    # end

    context "with invalid attributes" do
      it "does not save the new aluno" do
        expect {
          post :create, params: { aluno: attributes_for(:aluno, nome_completo: nil) }
        }.to_not change(aluno, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { aluno: attributes_for(:aluno, nome_completo: nil) }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the aluno" do
        patch :update, params: { id: aluno.id, aluno: { nome_completo: "New Name" } }
        aluno.reload
        expect(aluno.nome_completo).to eq("New Name")
      end

      it "redirects to the updated aluno" do
        patch :update, params: { id: aluno.id, aluno: { nome_completo: "New Name" } }
        expect(response).to redirect_to(aluno)
      end
    end

    context "with invalid attributes" do
      it "does not update the aluno" do
        original_name = aluno.nome_completo
        patch :update, params: { id: aluno.id, aluno: { nome_completo: nil } }
        aluno.reload
        expect(aluno.nome_completo).to eq(original_name)
      end

      it "re-renders the :edit template" do
        patch :update, params: { id: aluno.id, aluno: { nome_completo: nil } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the aluno" do
      expect {
        delete :destroy, params: { id: aluno.id }
      }.to change(Aluno, :count).by(-1)
    end

    it "redirects to alunos#index" do
      delete :destroy, params: { id: aluno.id }
      expect(response).to redirect_to(alunos_path)
    end
  end
end


