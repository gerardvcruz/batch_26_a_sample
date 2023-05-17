class AuthController < ApplicationController
  # GET /signin
  def signin
  end

  # GET /signup
  def signup

  end

  def new_session
    if user = User.signin(user_params)
      render json: { token: user.token }, status: 200
    else
      render json: { not_found: true }, status: 403
    end

  end

  # POST /signup
  def new_account
    if (signup_params[:password] == signup_params[:password_confirmation])
      @user = User.signup(user_params)

      redirect_to articles_path
    else
      render :signup, status: :unprocessable_entity
    end
  end

  def reset_password
    if user = User.find_by_email(params[:email])
      user.generate_password_reset_token
      user.send_reset_password_email

      render json: { success: true }, status: 200
    end


  end

  def logout
    
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def signup_params
    params.permit(:email, :password, :password_confirmation)
  end
end
