class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = current_user.teams.new(team_params)
    if @team.save
      redirect_to teams_path, notice: 'チーム結成おめでとう！'
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new
    end
  end

  def index
    @teams = current_user.teams.all
  end

  private
  def team_params
    params.require(:team).permit(:team_image,:team_name)
  end
end
