Rails.application.routes.draw do
  
  root "articles#index"
  get "/sso", to: "sso#ss"
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end