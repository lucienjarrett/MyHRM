# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee_salary do
    employee_id 1
    rate_per_hour 1.5
    is_active false
    date_from "2014-08-03"
    date_to "2014-08-03"
  end
end
