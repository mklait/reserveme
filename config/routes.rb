Rails.application.routes.draw do
  devise_for :owners
	root to: "restaurants#index"

resources :restaurants do
		resources :reservations

end

get 'dashboard', to: 'dashboards#dashboard'
end 