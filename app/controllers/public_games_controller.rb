class PublicGamesController < ApplicationController
  def index
    @games = Game.includes(:cover_image_attachment).published
  end
end
