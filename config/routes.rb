Rails.application.routes.draw do
  get 'appointments/show'

  # delete these gets later!
  get 'patients/show'

  get 'patients/index'

  get 'doctor/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:show]
  resources :patients, only: [:show, :index]
  resources :appointments, only: [:show]
end
