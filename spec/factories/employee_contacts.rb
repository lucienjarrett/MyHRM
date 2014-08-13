# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee_contact do
   association :employee
   association :relationship
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    phone_number {"8765779814"}
    is_emergency_contact {false}
  end
end
