class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
    @professores = Professor.all

  end

  def show
    @professor = Professor.find(params[:id])
    @turmas = @professor.turmas
  end

  def new
    @turma = Turma.new
  end

  def create
    @turma = Turma.new(turma_params)
  
    if @turma.save
      redirect_to @turma, notice: 'Turma was successfully created.'
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
      redirect_to @turma, notice: 'Turma atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @turma = Turma.find(params[:id])
    @turma.destroy

    redirect_to turmas_path, notice: 'Turma apagada com sucesso.'
  end
  


 
  private
  def turma_params
    params.require(:turma).permit(:turma, :disciplina_id, professor_ids: [])
  end
end
  