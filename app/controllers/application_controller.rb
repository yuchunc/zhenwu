class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SetLocale

  before_action :settings
  before_action :set_locale

  def homepage
  end

  def about
    @page = Page.find_translated("about", I18n.locale)
  end

  def courses
    @page = Page.find_translated("course", I18n.locale)
  end

  def blog
    @page = Page.find_translated("blog", I18n.locale)
  end

  private

    def settings
      setuserlocale
    end

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

end
