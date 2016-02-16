class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_topics
  before_filter :last_page

  def get_topics
    @topics = Topic.all
  end

  def last_page
    session[:last_page] = request.env['HTTP_REFERER']
  end

  include SessionsHelper

end
