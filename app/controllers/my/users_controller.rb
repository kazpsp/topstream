class My::UsersController < My::MyController

  def show
    render json: current_user.to_json
  end

end
