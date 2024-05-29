class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
    render json: @turmas
  end

  def show
    @turma = Turma.find(params[:id])
    render json: @turma
  end

  def new
    @turma = Turma.new
    render json: @turmas

  end

  def create
    @turma = Turma.new(turma_params)
    if @turma.save
      render json: @turma, status: :created
    else
      render json: @turma.errors, status: :unprocessable_entity
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
  
  def set_turma
    @turma = Turma.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render status: :not_found, json: { error: 'Turma não encontrada' }
  end

 
  private
  def turma_params
    params.require(:turma).permit(:turma, :disciplina_id, professor_ids: [])
  end
end
  
