Rails.application.routes.draw do
  post "/login", to: 'users#login'
  post "/persist", to: 'users#persist'
  get "/goals/:id", to: 'goals#show'
  post "/goals/:id", to: 'milestone#create'
  delete "/goals/:id", to: 'milestone#delete'
  patch "/goals/:id", to: 'goals#update'

  resources :milestones
  resources :goals
  resources :users, only: [:create,:show]

end
