json.array!(@startups) do |startup|
  json.extract! startup, :id, :name, :category, :employees, :date_founded, :location, :founders, :greens_id
  json.url startup_url(startup, format: :json)
end
