json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :email, :pw_digest, :image
  json.url user_url(user, format: :json)
end
