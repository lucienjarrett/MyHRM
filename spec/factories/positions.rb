# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    position_name "MyString"
    is_active false
  end
end
