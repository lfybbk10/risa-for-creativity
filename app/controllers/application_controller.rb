class ApplicationController < ActionController::Base
  include SessionsHelper


  private

  # Проверяет статус входа пользователя.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Войдите в профиль"
      redirect_to login_url
    end
  end
end