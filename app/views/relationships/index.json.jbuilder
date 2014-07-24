json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :relationship_name
  json.url relationship_url(relationship, format: :json)
end
