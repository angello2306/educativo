json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :type_user
  json.url admin_user_url(user, format: :json)
end