json.extract! user, :id, :name, :email, :password, :role, :is_active, :created_at, :updated_at
json.url user_url(user, format: :json)
