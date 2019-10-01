Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'user/invites'
  get '/invites', to: "users#invites"
  root to: 'pages#home'
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
