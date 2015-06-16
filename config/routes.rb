TannerRentals::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root to: "static#index"

  resources :properties
  resources :leases
  resources :bills
  resources :photos
  resources :units
  resources :charges

  post '/mailer', to: "mailer#create"

  devise_for :users
  resources :users

end
