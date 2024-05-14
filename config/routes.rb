Rails.application.routes.draw do
  root 'home#index'
  get '/inicio', to: 'home#index'

  resources :professors
  resources :disciplinas
  resources :alunos, only: [:index, :show, :new, :create] do
    collection do
      get 'filtrar', to: 'alunos#filtrar'
    end
  end
  resources :turmas do
    get 'filtroalunos', on: :member
  end

  # Adicionar rota para o show action do AlunosController
  resources :alunos, only: [:show] 

  match '*path', to: 'application#render_404', via: :all
end
