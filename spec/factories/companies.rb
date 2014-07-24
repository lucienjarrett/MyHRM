# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    company_name "MyString"
    is_active false
  end
end
