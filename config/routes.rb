Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/contact", to: "pages#contact"
  get "/about", to: "pages#about"
  get "/trade-in", to: "pages#trade-in"

  resources :makes, only: [:show, :index] do
    resources :models, only: [:show] do
      resources :cars, only: [:show]
    end
  end
  resources :cars, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
