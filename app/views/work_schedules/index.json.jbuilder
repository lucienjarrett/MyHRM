json.array!(@work_schedules) do |work_schedule|
  json.extract! work_schedule, :id, :name, :is_active
  json.url work_schedule_url(work_schedule, format: :json)
end
