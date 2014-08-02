json.array!(@review_types) do |review_type|
  json.extract! review_type, :id, :review_name, :status
  json.url review_type_url(review_type, format: :json)
end
