Rails.application.routes.draw do
  devise_for :users
  get 'welcomes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :informations
  
  root "informations#index"
end
