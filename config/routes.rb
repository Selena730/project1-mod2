Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/companies', to: 'companies#index'
  get '/companies/:id', to: 'companies#show', as: 'company'
  get '/companies/:company_id/employees', to: 'employees#index', as: 'company_employees'

  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'

  # Defines the root path route ("/")
  # root "posts#index"
end
