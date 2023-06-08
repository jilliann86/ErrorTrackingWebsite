json.extract! error, :id, :name, :severity, :created_at, :updated_at
json.url error_url(error, format: :json)
