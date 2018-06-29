class GamesController < ApplicationController
  def new
    @game = Game.new
    @order = Order.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new and return
    end
    @order = Order.new(order_params)
    @order.game_id = @game.id
    if @order.save
      redirect_to team_game_new_record_path(params[:team_id],@game.id), notice: '試合結果が登録されました！'
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new and return
    end
  end

  def new_record
    @inning = Inning.new
    @batter_score = BatterScore.new
    @record = Record.new
    @game = Game.where(team_id: params[:team_id])
    @order = Order.where(game_id: params[:game_id])
  end

  def new_record_create
    @inning = Inning.new(inning_params)
    if @inning.save
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new_record and return
    end
    @batter_score = Batter_score.new(batter_score_params)
    if @batter_score.save
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new_record and return
    end
    @record = Record.new(record_params)
    @record.batter_score_id = @batter_score.id
    if @record.save
      redirect_to team_game_path(params[:team_id]), notice: '試合結果が登録されました！'
    else
      flash.now[:alert] = '入力に誤りがあるよ！もう一度トライしよう！'
      render :new and return
    end
  end

  def index
    @game = Game.where(team_id: params[:team_id])
  end

  def show
    @game = Game.where(team_id: params[:team_id])
    @order = Order.where(game_id: params[:id])
  end

  def score_index
    @score_index = Game.where(team_id: params[:team_id])
  end

  private
  def game_params
    params.require(:game).permit(:team_id,:game_date,:opponent,:top_score_image,:bottom_score_image)
  end

  private
  def order_params
    params.require(:order).permit(:game_id,:first_batter,:first_batter_position,:second_batter,:second_batter_position,:third_batter,:third_batter_position,:fourth_batter,:fourth_batter_position,:fifth_batter,:fifth_batter_position,:sixth_batter,:sixth_batter_position,:seventh_batter,:seventh_batter_position,:eighth_batter,:eighth_batter_position,:ninth_batter,:ninth_batter_position)
  end

  private
  def inning_params
    params.require(:inning).permit(:game_id,:inning_number,:top_score,:bottom_score)
  end

  private
  def batter_score_params
    params.require(:batter_score).permit(:member_id,:game_id,:hit_point,:steal,:score)
  end

  private
  def record_params
    params.require(:record).permit(:batter_score_id,:hitting_direction,:result,:batting_number)
  end

end
