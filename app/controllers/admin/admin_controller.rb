class Admin::AdminController < ApplicationController
  layout 'admin'
  
  before_filter :login_required
  before_filter :admin_required

protected
  def admin_required
    unauthorized! unless current_user.admin?
  end
end
