Rails.application.routes.draw do
  get 'members/new'
  get 'teams/new'
  get 'sessions/new'
  get 'pages/index'
  root 'pages#index'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users'

  resources 'teams'
  resources 'members'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
