# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee_contact do
    references ""
    first_name "MyString"
    last_name "MyString"
    phone_number "MyString"
    is_emergency_contact false
  end
end
