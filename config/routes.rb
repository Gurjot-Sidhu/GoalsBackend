Rails.application.routes.draw do
  resources :milestones
  resources :goals
  resources :users, only: [:create,:show]

  post "/login", to: 'users#login'
  post "/persist", to: 'users#persist'
  get "/goals/:id", to: 'goals#show'
end
