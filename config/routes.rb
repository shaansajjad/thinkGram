Rails.application.routes.draw do
  devise_for :accounts
   root 'welcome#index'
   get "/dashboard" => "accounts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
