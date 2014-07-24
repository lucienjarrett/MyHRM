json.array!(@banks) do |bank|
  json.extract! bank, :id, :bank_name, :is_active
  json.url bank_url(bank, format: :json)
end
