class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      new_session = Session.create(user_id: @user.id, session_id: SecureRandom.hex)
      session["user_session_id"] = new_session.session_id

      redirect_to stories_path
    else
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
