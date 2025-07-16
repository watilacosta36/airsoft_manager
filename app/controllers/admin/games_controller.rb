module Admin
  class GamesController < BaseController
    before_action :set_game, only: %i[ edit update destroy ]

    def index
      @games = Game.includes(:user).all
    end

    def new
      @game = Game.new
    end

    def edit
    end

    def create
      @game = Game.new(game_params.merge(user_id: current_user.id))

      if @game.save
        redirect_to admin_root_path, notice: "Game salvo com sucesso!"
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @game.update(game_params)
        redirect_to admin_root_path, notice: "Game atualizado com sucesso!"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @game.destroy!

      redirect_to admin_root_path, status: :see_other, notice: "Game excluíío definitivamente!"
    end

    private

    def set_game
      @game = Game.find(params.expect(:id))
    end

    def game_params
      params.expect(game: [ :data, :local, :title, :description, :user_id ])
    end
  end
end
