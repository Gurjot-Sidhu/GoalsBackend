Rails.application.routes.draw do
  post "/login", to: 'users#login'
  post "/persist", to: 'users#persist'
  get "/goals/:id", to: 'goals#show'
  post "/goals/:id", to: 'milestones#create'

  delete "goals/:id", to: 'goals#delete'
  patch "goals/:id", to: 'goals#complete'

  delete "milestones/:id", to: 'milestones#delete'
  patch "milestones/:id", to: 'milestones#complete'
  

  resources :milestones
  resources :goals
  resources :users, only: [:create,:show]

end
