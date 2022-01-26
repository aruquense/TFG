Rails.application.routes.draw do
  resources :patient_aacc_habits
  resources :patient_aacc_symptoms
  resources :aaccs
  get 'home/index'
  devise_for :users
  #resources :patients
  root "patients#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :patients do
    resources :aaccs do
      resources :patient_aacc_symptoms#, shallow: true
    end
  end
  #get 'patients/:patient_id/aaccs/:id/edit', to: 'aaccs#edit'


end
