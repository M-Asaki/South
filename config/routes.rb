Rails.application.routes.draw do
  get 'games/new'
  get 'members/new'
  get 'teams/new'
  get 'sessions/new'
  get 'pages/index'
  root 'pages#index'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users'

  resources :teams do
    resources 'members'
  end

  resources :teams do
    resources :games do
      resources 'orders'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
