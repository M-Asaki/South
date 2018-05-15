class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
    if @user.save
      redirect_to root_path, notice: 'ようこそSouthへ！　さぁ、私を甲子園に連れていって！'
    else
      flash.now[:alert] = "参加できませんでした。もう一度登録しよう！"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
