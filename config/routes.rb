Rails.application.routes.draw do
  root 'home#index'
  get '/inicio', to: 'home#index'

  resources :professors
  resources :disciplinas
  resources :alunos
  resources :alunos, only: [:index, :show, :new, :create] do
    collection do
      get 'filtrar', to: 'alunos#filtrar'
    end
  end
  resources :turmas, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :turmas do
    get 'filtroalunos', on: :member
  end
  resources :turmas, only: [:create]


  match '*path', to: 'application#render_404', via: :all
end
