class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :authenticate_user

  def current_user
    token = request.headers['Authorization']

    if token.present?
      user ||= User.find_by(token: token.gsub("Token ", ""))
    end
  end

  def authenticate_user
    if current_user.nil?
      render json: { unauthenticated: true }, status: 403
    end
  end
end
