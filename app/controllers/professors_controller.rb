# app/controllers/professors_controller.rb
class ProfessorsController < ApplicationController
    before_action :set_professor, only: [:show, :edit, :update, :destroy]
  
    def index
      @professors = Professor.all
    end
  
    def show
    end
  
    def new
      @professor = Professor.new
    end
  
    def edit
    end
  
    def create
      @professor = Professor.new(professor_params)
  
      respond_to do |format|
        if @professor.save
          format.html { redirect_to @professor, notice: 'Professor criado com sucesso.' }
          format.json { render :show, status: :created, location: @professor }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @professor.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @professor.update(professor_params)
          format.html { redirect_to @professor, notice: 'professor atualizado com sucesso!' }
          format.json { render :show, status: :ok, location: @professor }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @professor.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @professor.destroy
      redirect_to professors_url, notice: 
    end
  
    private
      def set_professor
        @professor = Professor.find(params[:id])
      end
  
      def professor_params
        params.require(:professor).permit(:nome_completo, :cpf, :data_nascimento, :codigo_turma, :turma_id, :email)
      end
  end
  