# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    department_name "MyString"
    is_active false
  end
end
