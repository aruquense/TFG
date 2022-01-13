Rails.application.routes.draw do
  resources :aaccs
  resources :posts
  resources :patients
  resources :posts do
    resources :comments
  end

  root "patients#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get "/bienvenida", to: "home#index"
  get "patients/new", to: "patients#new"
  post "patients", to: "patients#create"

  get "patients/new2", to: "patients#new2"
  post "patients", to: "patients#create"

  get "patients/:id/aacc", to: "aacc#index"
end
