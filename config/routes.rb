Rails.application.routes.draw do

  resources :users,:sessions
  resources :games, except: [:destroy] do
    resources :add_ons
  end

  root :to => 'games#index'  #RAILS 3

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
