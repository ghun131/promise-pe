json.extract! user, :id, :phone, :name, :created_at, :updated_at
json.url user_url(user, format: :json)
