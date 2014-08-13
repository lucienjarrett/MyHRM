# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :education do
    name {Faker::Name.name}
    is_active {false}
  end
end
