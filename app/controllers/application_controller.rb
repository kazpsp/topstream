class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
        :bio,
        :first_name,
        :last_name,
        :age,
        :country,
        :profile_image,
        :bio
    ])

    devise_parameter_sanitizer.permit(:account_update, keys: [
        :bio,
        :first_name,
        :last_name,
        :age,
        :country,
        :profile_image,
        :bio
    ])
  end
end
