class GamesController < ApplicationController
  def new
    @game = Game.new
    @order = Order.new
  end
end
