RSpec.describe DisciplinasController, type: :controller do
  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new disciplina" do
        expect {
          post :create, params: { disciplina: attributes_for(:disciplina) }
        }.to change(Disciplina, :count).by(1)
      end
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
    before :each do
      @disciplina = create(:disciplina)
    end

    context "with valid attributes" do
      it "updates the disciplina" do
        patch :update, params: { id: @disciplina.id, disciplina: { nome: "New Name" } }
        @disciplina.reload
        expect(@disciplina.nome).to eq("New Name")
      end

      it "redirects to the updated disciplina" do
        patch :update, params: { id: @disciplina.id, disciplina: { nome: "New Name" } }
        expect(response).to redirect_to(disciplina_path(@disciplina))
      end
    end

    context "with invalid attributes" do
      it "does not update the disciplina" do
        patch :update, params: { id: @disciplina.id, disciplina: { nome: nil } }
        @disciplina.reload
        expect(@disciplina.nome).to_not eq(nil)
      end

      it "re-renders the :edit template" do
        patch :update, params: { id: @disciplina.id, disciplina: { nome: nil } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @disciplina = create(:disciplina)
    end

    it "deletes the disciplina" do
      expect {
        delete :destroy, params: { id: @disciplina.id }
      }.to change(Disciplina, :count).by(-1)
    end

    it "redirects to DisciplinasController#index" do
      delete :destroy, params: { id: @disciplina.id }
      expect(response).to redirect_to(disciplinas_path)
    end
  end
end
