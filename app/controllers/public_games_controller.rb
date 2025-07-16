class PublicGamesController < ApplicationController
  def index
    @games = Game.all
  end
end
