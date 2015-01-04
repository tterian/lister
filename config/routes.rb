Rails.application.routes.draw do

	root				   'pages#home'

	get		'help'		=> 'pages#help'
	get		'about'		=> 'pages#about'
	get		'signup'	=> 'users#new'
	get		'login'		=> 'sessions#new'
	post	'login'		=> 'sessions#create'
	delete	'logout'	=> 'sessions#destroy'

	resources :users
	resources :account_activations, only: [:edit]
	resources :password_resets, 	only: [:new, :create, :edit, :update]
	resources :cars, 				only: [:new, :create, :edit, :update, :destroy]

end
