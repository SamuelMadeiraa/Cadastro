class DisciplinasController < ApplicationController
    def index
      @disciplinas = Disciplina.all
    end
  
    def new
      @disciplina = Disciplina.new
    end
  
    def create
      @disciplina = Disciplina.new(disciplina_params)
      if @disciplina.save
        redirect_to disciplinas_path
      else
        flash.now[:alert] = 'Não foi possível criar a disciplina, pois já existe uma disciplina com esse nome.'
        render :new
      end
    end
  
    def edit
      @disciplina = Disciplina.find(params[:id])
    end
  
    def update
      @disciplina = Disciplina.find(params[:id])
      if @disciplina.update(disciplina_params)
        redirect_to disciplinas_path
      else
        render 'edit'
      end
    end
  
    def destroy
      @disciplina = Disciplina.find(params[:id])
      @disciplina.destroy
      redirect_to disciplinas_path
    end
  
    private
  
    def disciplina_params
      params.require(:disciplina).permit(:nome)
    end
  end
  