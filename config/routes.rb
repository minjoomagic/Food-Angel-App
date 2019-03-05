Rails.application.routes.draw do
  resources :users
  resources :recipes
  resources :recipe_ingredients
  resources :ingredients
  root :to => "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
