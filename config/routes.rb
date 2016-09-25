Rails.application.routes.draw do

  resources :users

  resources :games, except: [:destroy] do
    resources :add_ons
  end

  root :to => 'games#index'  #RAILS 3

end
