# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    location_name "MyString"
    is_active false
  end
end
