Rails.application.routes.draw do
  scope :admin do
    resources :professions
    resources :institutions
    resources :activity_types #FAP o FAE
    resources :habits
    resources :prescription_drugs_types
    resources :exploration_types
    resources :tests
  end
  resources :patient_aacc_prescriptions
  resources :patient_aacc_tests
  resources :patient_aacc_habits
  resources :patient_aacc_symptoms
  resources :aaccs
  get 'home/index'
  get "admin", to: "admin#index"
  devise_for :users
  #resources :patients
  root "patients#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :patients do
    resources :aaccs do
      resources :patient_aacc_symptoms#, shallow: true
      resources :patient_aacc_tests
    end
  end
  get 'new2', to: "patient_aacc_symptoms#new2", as: :newtest

  #get 'patients/:patient_id/aaccs/:id/edit', to: 'aaccs#edit'


end
