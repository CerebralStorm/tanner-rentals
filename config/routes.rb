TannerRentals::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root to: "ember#start"

  resources :properties
  resources :leases
  devise_for :users, :controllers => {:registrations => "users"}

  resources :users
  resources :sessions

end
