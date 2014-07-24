json.array!(@educations) do |education|
  json.extract! education, :id, :name, :is_active
  json.url education_url(education, format: :json)
end
