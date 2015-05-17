class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("e3c702502140a03e98e33ce62a69aba1")

  def set_config
  	@configuration = Tmdb::Configuration.new
  end
end
