json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :encryptedpassword, :salt, :admin
  json.url user_url(user, format: :json)
end
