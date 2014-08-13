require 'rails_helper'

RSpec.describe Education, :type => :model do
  it "has a valid factory for education" do 
    expect(FactoryGirl.create(:education)).to be_valid
  end 
  
  it "is invalid if name is missing" do 
    expect(FactoryGirl.build(:education, name: nil)).to have(1).errors_on(:name)
  end 
end
