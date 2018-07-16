Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get "/login", to: "session#new"
  post "/login", to: "sessions#create"
  resources :comments
  resources :entries
  get 'users/index'
end
