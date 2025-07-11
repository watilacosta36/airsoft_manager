json.extract! game, :id, :data, :local, :title, :description, :user_id, :created_at, :updated_at
json.url game_url(game, format: :json)
