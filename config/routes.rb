Rails.application.routes.draw do
  resources :register_courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# resources :courses

  resources :students do
    resources :courses 
      resource :register_courses
    
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

post '/students/:id/courses/new', to: 'courses#create'
# post '/students/:id/courses/register', to: 'courses#register'

# get '/students/courses/register', to: 'courses#register'
# post '/students/courses/register', to: 'courses#register'

end
