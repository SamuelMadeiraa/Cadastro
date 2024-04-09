
class DisciplinaController < ApplicationController
    before_action :set_disciplinas, only: [:show, :edit, :update, :destroy]
  
    def index
      @disciplinas = Disciplina.all
    end
  
    def show
    end
  
    def new
      
      @disciplinas = Disciplina.new
    end
  
    def create
      @disciplinas = Disciplina.new(disciplinas_params)
      
      if @disciplinas.save
        redirect_to @disciplinas, notice: 'disciplinas criado com sucesso.'
      else
        render :new
      end
    end

    def edit
    end
  
    def update
      if @disciplinas.update(disciplinas_params)
        redirect_to @disciplinas, notice: 'disciplinas atualizado com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @disciplinas.destroy
      redirect_to disciplinass_url, notice: 'disciplinas apagado com sucesso.'
    end
  
    private
  
    def set_disciplinas
      @disciplinas = disciplinas.find(params[:id])
    end
  
    def disciplinas_params
      params.require(:disciplinas).permit(:materia)
    end
  end
  