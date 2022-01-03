Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "patients/new", to: "patients#new"
  post "patients", to: "patients#create"

  get "patients/new2", to: "patients#new2"
  post "patients", to: "patients#create"
end
