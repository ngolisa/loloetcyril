Rails.application.routes.draw do
  get 'user/invites'
  get '/invites', to: "users#invites"
  devise_for :users
  root to: 'pages#home'
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
