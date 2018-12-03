class SessionsController < ApplicationController
  def destroy
    Session.find_by(user_id: current_user.id).destroy
    session["user_session_id"] = nil

    redirect_to new_user_path
  end
end
