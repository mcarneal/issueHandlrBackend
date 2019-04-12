Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :employees, except: [:create]
        resources :assignments
        resources :issues
        post '/signup', to: 'employees#create'
        get '/profile', to: 'employees#profile'
    end
  end
end
