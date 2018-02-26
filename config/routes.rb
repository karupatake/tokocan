Rails.application.routes.draw do
  get 'writes/new'

  get 'sessions/new'

  get 'user/new'

  get 'chushions/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#index'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources 'user'
resources 'writes'
end
