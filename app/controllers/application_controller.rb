class ApplicationController < ActionController::Base
  before_action :load_session

  helper_method :current_user

  def current_user
    return nil unless current_session
    User.find_by(id: current_session.user_id)
  end

  def current_session
    Session.find_by(session_id: session["user_session_id"])
  end

  protected

  def load_session
    session["init"] = true
  end
end
