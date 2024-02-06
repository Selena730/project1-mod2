Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Route to display the form for a new company
  get '/companies/new', to: 'companies#new', as: 'new_company'

  # Route for the companies index page
  get '/companies', to: 'companies#index'

  # Route to create a new company
  post '/companies', to: 'companies#create'

  # Route for showing a specific company
  get '/companies/:id', to: 'companies#show', as: 'company'

  # Route to display the form for editing an existing company
  get '/companies/:id/edit', to: 'companies#edit', as: 'edit_company'

  # Route to update an existing company
  patch '/companies/:id', to: 'companies#update'

  # Route to delete a company
  delete '/companies/:id', to: 'companies#destroy'

  # Employee routes
  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'
  get '/companies/:company_id/employees', to: 'employees#index', as: 'company_employees'
  get '/companies/:company_id/employees/:id', to: 'employees#show', as: 'company_employee'
  get '/companies/:id/employees', to: 'employees#index', as: 'company_all_employees'
end
