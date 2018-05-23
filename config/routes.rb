Rails.application.routes.draw do

  get 'favorites/index'

  get 'writes/new'

  get 'sessions/new'

  get 'users/new'

  get 'chushions/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#index'
get '/login', to: 'writes#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources 'users'
resources 'writes'
post '/favorites', to: 'favorites#create'
get '/favorites', to: 'favorites#index'


end
