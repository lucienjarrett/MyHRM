json.array!(@vacations) do |vacation|
  json.extract! vacation, :id, :vacation_name, :status
  json.url vacation_url(vacation, format: :json)
end
