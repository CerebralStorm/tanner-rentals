RailsAdmin.config do |config|
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