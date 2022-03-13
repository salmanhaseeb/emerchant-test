class Admins::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(resource)
    super(resource)
    admins_merchants
  end
end