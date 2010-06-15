class Admin::UsersController < Admin::AdminController
    active_scaffold :user do |config|
      config.columns = [ :username, :email, :admin]
    end
end
