Rails.application.routes.draw do
	# root 'pups#index'
	root "facts#index"
	resources :facts, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
