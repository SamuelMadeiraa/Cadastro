# spec/controllers/alunos_controller_spec.rb

require 'rails_helper'

RSpec.describe AlunosController, type: :controller do
  describe "POST #create" do
    it "cria um novo aluno" do
      aluno_params = {
        nome_completo: "João Silva",
        cpf: "123.456.789-00",
        data_nascimento: "2000-01-01",
        turma_id: 1,
        email: "joao@example.com",
        disciplina_id: 1
      }

      expect {
        post :create, params: { aluno: aluno_params }
      }.to change(Aluno, :count).by(1)

      expect(response).to redirect_to(aluno_path(Aluno.last))
    end
  end
end
