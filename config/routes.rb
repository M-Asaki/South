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
  get    '/score_index', to: 'games#score_index'
    resources :games do
      get :new_record
      post :new_record, to: 'games#new_record_create'
      resources 'orders'
    end
  end

  get 'sumple/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
