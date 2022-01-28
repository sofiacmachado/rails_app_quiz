Rails.application.routes.draw do
  
  post 'jobs' => 'jobs#create'
  get 'jobs' => 'jobs#index'
  get '/jobs/:id' => 'jobs#jobs_id'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "jobs#index"
end
