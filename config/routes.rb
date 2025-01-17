Rails.application.routes.draw do
  resources :users
  
  get "/signup", to: 'users#new'

  get "/help", to: 'static_pages#help'

  get "/about", to: 'static_pages#about'

  get "/contact", to: 'static_pages#contact'

  get "up" => "rails/health#show", as: :rails_health_check

  root "static_pages#home"
end
