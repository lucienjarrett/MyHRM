# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    home_address_1 "MyString"
    home_address_2 "MyString"
    home_parish_id ""
    references ""
  end
end
