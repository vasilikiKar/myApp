Rails.application.routes.draw do
  get 'welcome/index'
  get '/engine_makers', to: 'pistons#index'
  get '/engine_makers/show', to: 'pistons#show'
  get '/engine_makers/show_details', to: 'pistons#show_details'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
