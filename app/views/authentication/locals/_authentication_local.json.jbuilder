json.extract! authentication_local, :id, :email, :user_id, :created_at, :updated_at
json.url authentication_local_url(authentication_local, format: :json)
