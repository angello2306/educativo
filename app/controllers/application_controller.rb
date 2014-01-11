class ApplicationController < ActionController::Base
	prepend_view_path "app/views/#{Rails.application.config.theme}"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
