Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :employees
        resources :assignments
        resources :issues
        # post '/signup', to: 'employees#create'
        get '/profile', to: 'employees#profile'
        get '/get_employee', to: 'employees#get_employee'
    end
  end
end
