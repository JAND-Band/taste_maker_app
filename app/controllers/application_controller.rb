class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionHelper
  helper_method :current_user, :logged_in?, :authenticate

  include FeedHelper
  helper_method :rss_feed_get, :rss_feed_view, :nyt_api, :nyt_api_view, :wunderground_api, :instagram_api, :instagram_api_view
end
