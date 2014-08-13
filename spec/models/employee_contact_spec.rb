require 'rails_helper'

RSpec.describe EmployeeContact, :type => :model do
  it "has a valid employee contact factory" do 
    expect(FactoryGirl.create(:employee_contact)).to be_valid
end

it "has a valid first name, last name, phone number" do 
  contact = EmployeeContact.new(
  first_name: "Lucien", 
  last_name: "Jarrett", 
  phone_number: "8765779814"
  ) 
  expect(contact).to be_valid
end  


it "is invalid without a first name" do 
  expect(EmployeeContact.new(first_name: nil)).to have(1).errors_on(:first_name)
end

it "is invalid with a last name" do 
  expect(EmployeeContact.new(last_name: nil)).to have(1).errors_on(:last_name)
end 
 

end 
