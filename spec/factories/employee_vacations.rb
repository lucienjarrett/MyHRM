# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee_vacation, :class => 'EmployeeVacations' do
    employee_id 1
    date_from "2014-08-01"
    date_to "2014-08-01"
    vacation_id 1
  end
end
