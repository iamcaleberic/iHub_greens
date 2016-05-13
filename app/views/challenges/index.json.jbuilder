json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :title, :description, :organization, :timeline, :reward
  json.url challenge_url(challenge, format: :json)
end
