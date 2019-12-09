Rails.application.routes.draw do
   devise_for :accounts
	 get "logout", to: 'sessions#destroy', as: 'logout'
   root 'welcome#index'
   get "/dashboard" => "accounts#index"
   get "profile/:username" => "accounts#profile", as: :profile
   resources :posts, only: [:new, :create, :show]
end