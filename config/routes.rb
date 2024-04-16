Rails.application.routes.draw do
  root 'home#index'
  get '/inicio', to: 'home#index'
  get '/alunos/filtrar_por_disciplina_e_turma', to: 'alunos#filtrar_por_disciplina_e_turma'
  get 'alunos/filtrar', to: 'alunos#filtrar'


    
  resources :professors
  resources :turmas
  resources :disciplinas
  resources :alunos 


end
