json.array!(@parishes) do |parish|
  json.extract! parish, :id, :parish_name
  json.url parish_url(parish, format: :json)
end
