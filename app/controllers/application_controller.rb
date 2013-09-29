class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SetLocale

  before_action :settings

  def homepage
  end

  def about
  end

  def courses
  end

  def blog
  end

  private

    def settings
      setuserlocale
    end

end
