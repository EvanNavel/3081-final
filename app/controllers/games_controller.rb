class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :set_systems, only: [:new, :edit]

  def index
    if params[:search]
      @games = Game.includes(:system).where('title ILIKE ?', "%#{params[:search]}%")
    else
      @games = Game.includes(:system).all
    end
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_url, notice: 'Game was successfully destroyed.'
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_systems
    @systems = System.all
  end

  def game_params
    params.require(:game).permit(:title, :system_id, :genre, :cost, :manufacturer, :condition)
  end
end
