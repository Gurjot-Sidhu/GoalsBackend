Rails.application.routes.draw do
  resources :milestones
  resources :goals
  resources :users, only: [:create,:show]

  post "/login", to: 'users#login'
  get "/persist", to: 'users#persist'

end
