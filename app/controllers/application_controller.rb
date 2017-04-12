class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # ログイン済み→トップページ   未ログインたとトップページに入れない
  before_action :authenticate_user!

  # nameカラム許可申請に入る
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :notice, :alert

  protected
  # permitメソッドを使用。キーを追加。キーワード引数keysを使用
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
