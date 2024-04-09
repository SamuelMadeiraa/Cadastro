class AlunosController < ApplicationController
    before_action :set_aluno, only: [:show, :edit, :update, :destroy]
  
    def index
      @alunos = Aluno.all
    end
  
    def show
    end
  
    def new
      @aluno = Aluno.new
    end
  
    def create
      @aluno = Aluno.new(aluno_params)
      
      if @aluno.save
        redirect_to @aluno, notice: 'Aluno criado com sucesso.'
      else
        render :new
      end
    end

    def edit
    end
  
    def update
      if @aluno.update(aluno_params)
        redirect_to @aluno, notice: 'Aluno atualizado com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @aluno.destroy
      redirect_to alunos_url, notice: 'Aluno apagado com sucesso.'
    end
  
    private
  
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end
  
    def aluno_params
      params.require(:aluno).permit(:nome_completo, :cpf, :data_nascimento, :codigo_turma, :turma_id, :email)
    end
  end
  