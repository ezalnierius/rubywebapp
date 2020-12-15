Rails.application.routes.draw do
  resources :employees
	root 'public#main'
	get 'public/items'
	get 'public/contacts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
