Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' },
                     path_names: { sign_in: 'login', sign_out: 'logout' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
