class MembersController < ApplicationController
  def new
    @member = Member.new
    @member = Member.where(team_id: params[:team_id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to new_team_member_path(team.id)
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new
    end
  end

  private
  def member_params
    params.require(:member).permit(:uniform_number,:member_name,:team_id)
  end
end
