Rails.application.routes.draw do
  get 'patient/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "facility#index"
  resources :facility, only: [:show, :index] do
    resources :patient, only: [:show] do
      member do
        get 'transfer'
      end
    end
  end
end
