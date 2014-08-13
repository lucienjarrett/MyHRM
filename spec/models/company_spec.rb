require 'rails_helper'

RSpec.describe Company, :type => :model do
  it 'has a valid company factory' do
  expect(FactoryGirl.create(:company)).to be_valid
end

it "is invalid with a duplicate company name" do
  Company.create(
  company_name: 'COOL' 
  )
  company = Company.new(
  company_name: 'COOL'
  )
  expect(company).to have(1).errors_on(:company_name)
   
end 

it 'is invalid without a bank name' do 
  expect(FactoryGirl.build(:company, company_name: nil)).to have(1).errors_on(:company_name)
end 

end 
