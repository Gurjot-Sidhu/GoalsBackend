Rails.application.routes.draw do
  resources :milestones
  resources :goals
  resources :users, only: [:create,:show]

  post "/login", to: 'users#login'
  post "/persist", to: 'users#persist'
  get "/goals/:id", to: 'goals#show'
  post "/goals/:id", to: 'milestone#create'
end
