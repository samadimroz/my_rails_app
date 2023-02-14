json.extract! user, :id, :name, :age, :company_id, :yearjoined, :created_at, :updated_at
json.url user_url(user, format: :json)
