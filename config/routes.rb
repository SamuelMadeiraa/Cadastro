Rails.application.routes.draw do
  root 'home#index'
  get '/inicio', to: 'home#index'


  resources :disciplinas
 
  resources :professors
  resources :turmas do
    get 'alunos_da_turma', on: :collection
  
  resources :alunos do
    collection do
      get 'filtrar', to: 'alunos#filtrar'
    end
  end
end 

end
