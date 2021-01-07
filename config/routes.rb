Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# resources :courses

  resources :students do
    resources :courses
  end



root 'students#home'
get '/signup', to: 'students#new'
post '/signup', to: 'students#create'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'
patch '/students/:id/courses', to: 'courses#update'
delete '/logout', to: 'sessions#destroy'
delete '/', to: 'students#destroy'


end
