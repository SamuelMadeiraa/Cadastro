class TurmasController < ApplicationController
  before_action :set_turma, only: [:show, :edit, :update, :destroy]

  def index
    @turmas = Turma.all
  end

  def show
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
  end

  def update
    if @turma.update(turma_params)
      redirect_to @turma, notice: 'Turma was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @turma.destroy
    redirect_to turmas_url, notice: 'Turma was successfully destroyed.'
  end

  private

  def set_turma
    @turma = Turma.find(params[:id])
  end

  def turma_params
    params.require(:turma).permit(:turma, :professor_id)  # Adjust according to your actual attributes
  end
end
