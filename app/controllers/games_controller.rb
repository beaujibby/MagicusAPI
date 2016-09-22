class GamesController < ApplicationController
  before_action :find_game, only: [:edit, :show, :update]

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
    end
  end


  def edit
  end


  def index
    @games = Game.order(name: :asc)
  end


  def new
    @game = Game.new
  end


  def show
  end


  def update
    @game.update(game_params)
    redirect_to @game
  end

protected

  def find_game
    @game = Game.find(params[:id])
  end


  def game_params
    params[:game].permit(:name)
  end

end
