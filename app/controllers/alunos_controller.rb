class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]

  def index
    @alunos = Aluno.all
  end

  def filtrar
    @alunos = Aluno.filter_by_name(params[:query])
    render 'filtrar'
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

  # GET /alunos/1/edit
  def edit
  end

  # PATCH/PUT /alunos/1
  def update
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Aluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @aluno.destroy
    redirect_to alunos_url, notice: 'Aluno apagado com sucesso.'
  end


 
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_aluno
    @aluno = Aluno.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def aluno_params
    params.require(:aluno).permit(:nome_completo, :cpf, :data_nascimento, :turma_id, :email, :disciplina_ids => [])
  end
end
