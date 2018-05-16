class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = current_user.members.new(member_params)
    if @team.save
      redirect_to members_path
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new
    end
  end

  def index
    @members = current_user.members.all
  end

  private
  def member_params
    params.require(:member).permit(:uniform_number,:member_name)
  end
end
