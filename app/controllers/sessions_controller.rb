class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, notice: 'お帰りなさい！さぁ、早く私を甲子園に連れて行って！'
    else
      flash.now[:alert] = 'ログイン出来ませんでした。入力内容をご確認ください。'
      render 'new'
    end
  end

  private
  def log_in(user)
    session[:user_id] = user.id
  end

end
