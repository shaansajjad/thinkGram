Rails.application.routes.draw do
   devise_for :accounts
   devise_scope :accounts do
 			 delete 'logout', to: 'devise/sessions#destroy'
		end
   root 'welcome#index'
   get "/dashboard" => "accounts#index"
   #resources :posts, only: [:new, :create, :show]
   resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
