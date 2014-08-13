require 'rails_helper'

RSpec.describe Department, :type => :model do
  it "has a valid department factory" do
  expect(FactoryGirl.create(:department)).to be_valid
end

it "is invalid without a department name" do 
  expect(FactoryGirl.build(:department, department_name: nil)).to have(1).errors_on(:department_name)
end 


end 