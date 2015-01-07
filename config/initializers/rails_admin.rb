RailsAdmin.config do |config|
  config.authorize_with :cancan
  config.current_user_method &:current_user
  config.model 'User' do
    edit do
      field :name
      field :email
      field :password
      field :phone
      field :role
    end
  end
end