Rails.application.routes.draw do
  resources :users
  resources :recipes
  resources :recipe_ingredients
  resources :ingredients
  resources :favorites
  root :to => "application#index"
  get '/login', to: "sessions#new", as: 'login'
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout'
  put '/recipe/search/q=', to: "recipes#api_request", as: 'search'
  get '/about', to: "application#about", as: 'about'
  get '/contact', to: "application#contact", as: 'contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
