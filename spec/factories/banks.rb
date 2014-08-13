# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :bank do 
  bank_name { Faker::Name.name }
  is_active { true}
    
  end
end
