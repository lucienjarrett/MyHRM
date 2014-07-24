json.array!(@departments) do |department|
  json.extract! department, :id, :department_name, :is_active
  json.url department_url(department, format: :json)
end
