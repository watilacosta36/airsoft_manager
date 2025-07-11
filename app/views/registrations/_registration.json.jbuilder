json.extract! registration, :id, :name, :contact_number, :status, :game_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)
