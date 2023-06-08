json.extract! user_error, :id, :user_id, :error_id, :note, :date, :created_at, :updated_at
json.url user_error_url(user_error, format: :json)
