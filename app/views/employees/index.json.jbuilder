json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :middle_name, :gender, :dob
  json.url employee_url(employee, format: :json)
end
