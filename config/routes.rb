Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :attractions
  resources :users

  get '/', to: 'application#home', as: 'root'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#newsignin'
  get '/signout', to: 'users#signout'
  post '/ride', to: "rides#create", as: 'ride'
  
end
