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
      resources :patient_aacc_tests, only: [:index, :new] #, shallow: true
      
      
      
      get 'patient_aacc_tests/new_test_barthel', to: "patient_aacc_tests#new_test_barthel", as: :new_test_barthel
      get 'patient_aacc_tests/new_test_fast', to: "patient_aacc_tests#new_test_fast", as: :new_test_fast
      get 'patient_aacc_tests/new_test_informador', to: "patient_aacc_tests#new_test_informador", as: :new_test_informador
      get 'patient_aacc_tests/new_test_katz', to: "patient_aacc_tests#new_test_katz", as: :new_test_katz
      get 'patient_aacc_tests/new_test_lawton_brody', to: "patient_aacc_tests#new_test_lawton_brody", as: :new_test_lawton_brody
      get 'patient_aacc_tests/new_test_mec', to: "patient_aacc_tests#new_test_mec", as: :new_test_mec
      get 'patient_aacc_tests/new_test_minimental', to: "patient_aacc_tests#new_test_minimental", as: :new_test_minimental
      get 'patient_aacc_tests/new_test_npi', to: "patient_aacc_tests#new_test_npi", as: :new_test_npi
      get 'patient_aacc_tests/new_test_pfeiffer', to: "patient_aacc_tests#new_test_pfeiffer", as: :new_test_pfeiffer
      get 'patient_aacc_tests/new_test_reloj', to: "patient_aacc_tests#new_test_reloj", as: :new_test_reloj
      get 'patient_aacc_tests/new_test_yessavage_4', to: "patient_aacc_tests#new_test_yessavage_4", as: :new_test_yessavage_4
      get 'patient_aacc_tests/new_test_yessavage_10', to: "patient_aacc_tests#new_test_yessavage_10", as: :new_test_yessavage_10
      get 'patient_aacc_tests/new_test_yessavage_15', to: "patient_aacc_tests#new_test_yessavage_15", as: :new_test_yessavage_15
      get 'patient_aacc_tests/new_test_yessavage_30', to: "patient_aacc_tests#new_test_yessavage_30", as: :new_test_yessavage_30
        #get 'profile', action: :show, controller: 'users'
    end
  end
  get "calculator", to: "calculator#index"
  resources :calculator
  #get 'patients/:patient_id/aaccs/:id/edit', to: 'aaccs#edit'


end
