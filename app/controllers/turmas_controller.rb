class TurmasController < ApplicationController
    def index
      @turmas = Turma.all
    end
  
    def show
      @turma = Turma.find(params[:id])
    end
  
    def new
      @turma = Turma.new
    end
  
    def create
      @turma = Turma.new(turma_params)
  
      if @turma.save
        redirect_to @turma, notice: 'Turma criada com sucesso'
      else
        render :new
      end
    end
  
    def edit
      @turma = Turma.find(params[:id])
    end
  
    def update
      @turma = Turma.find(params[:id])
  
      if @turma.update(turma_params)
        redirect_to @turma, notice: 'Turma atualizada com sucesso'
      else
        render :edit
      end
    end
  
    def destroy
      @turma = Turma.find(params[:id])
      @turma.destroy
  
      redirect_to turmas_path, notice: 'Turma apagada com sucesso'
    end
  
    private
  
    def turma_params
      params.require(:turma).permit(:codigo_turma)
    end
  end
  