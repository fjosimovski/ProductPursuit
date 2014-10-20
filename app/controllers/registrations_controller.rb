class RegistrationsController < Devise::RegistrationsController

before_action :configure_permitted_parameters, if: :devise_controller?

private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :coy, :title, :email, :password, :password_confirmation
    devise_parameter_sanitizer.for(:account_update) << :coy, :title, :email, :password, :password_confirmation, :current_password
  end
end