class CustomFailure < Devise::FailureApp
  def respond
      http_auth
  end

  def http_auth_body
    {
        sucess: false,
        message: i18n_message
    }.to_json
  end
end