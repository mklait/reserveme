Rails.application.routes.draw do
  devise_for :owners
	root to: "restaurants#index"

resources :restaurants
end
