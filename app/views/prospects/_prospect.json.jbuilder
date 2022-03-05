json.extract! prospect, :id, :nombre, :apellido, :telefono, :email, :status_id, :user_id, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
