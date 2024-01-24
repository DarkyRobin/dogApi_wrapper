Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get '/dogs/breeds', to: 'dogs#breeds', as: 'breeds'
  get '/dogs/breed_info/:id', to: 'dogs#breed_info', as: 'breed_info'
  get '/dogs/breed_groups', to: 'dogs#breed_groups', as: 'breed_groups' 
  get '/dogs/group_info/:id', to: 'dogs#group_info', as: 'group_info'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
