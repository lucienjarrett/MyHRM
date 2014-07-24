# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bank do
    bank_name "MyString"
    is_active false
  end
end
