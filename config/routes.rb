Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'mods#index'

  get '/mods/:id/students/new', to: 'students#new'
  post '/mods/:id/students', to: 'students#create'
  delete '/students/:id', to: 'students#destroy'
  delete '/mods/:id/student_count', to:'student_counts#destroy'
  get '/mods/:mod_id/students/:id', to: 'students#edit'
  patch '/mods/:mod_id/students/:id', to: 'students#update'
  resources :mods, only: [:show]
end
