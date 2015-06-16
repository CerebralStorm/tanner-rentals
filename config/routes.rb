TannerRentals::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root to: "static#index"

  get '/owners', to: "owners#index", as: :owners
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
