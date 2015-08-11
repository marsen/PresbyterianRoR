class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :init
  def init
    @is_admin = to_bool(session[:is_admin])
  end
  protected
  def to_bool(value)
    return true if value == true || value.to_s.strip =~ /^(true|yes|y|1)$/i
    return false
  end
end
