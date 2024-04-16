Rails.application.routes.draw do
  root 'home#index'
  get '/inicio', to: 'home#index'


    
  resources :professors
  resources :turmas
  resources :disciplinas
  resources :alunos do
    collection do
      get 'filtrar', to: 'alunos#filtrar'
    end
  end

end
