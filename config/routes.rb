Rails.application.routes.draw do

  resources :games, except: [:destroy] do
    resources :add_ons
  end

end
