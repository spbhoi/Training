Rails.application.routes.draw do
  root 'home#index'

   # root 'home#index'
  resources :posts
  devise_for :users ,controllers:{registratins: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/users/sign_in'  
end
