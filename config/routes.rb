Rails.application.routes.draw do
  root 'restaurant#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :restaurants
end
