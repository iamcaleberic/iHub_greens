json.array!(@messages) do |message|
  json.extract! message, :id, :body, :read, :green_id
  json.url message_url(message, format: :json)
end
