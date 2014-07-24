json.array!(@locations) do |location|
  json.extract! location, :id, :location_name, :is_active
  json.url location_url(location, format: :json)
end
