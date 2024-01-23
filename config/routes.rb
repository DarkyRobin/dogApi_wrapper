Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  
  get '/dogs', to: 'dogs#show', as: 'dogs_list' # List all dog breeds
  get '/dogs/:id/show_breed', to: 'dogs#show_breed', as: 'show_breed'  # Show a specific breed's information


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
