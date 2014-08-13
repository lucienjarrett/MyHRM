# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    department_name {Faker::Name.name}
    is_active {true}
  end
end
