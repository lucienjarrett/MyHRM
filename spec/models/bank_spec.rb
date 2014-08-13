require 'rails_helper'

RSpec.describe Bank, :type => :model do
  it 'has a valid factory' do 
    expect(FactoryGirl.create(:bank)).to be_valid
  end 
 
  it "is invalid with a duplicate bank name" do
    Bank.create(
    bank_name: 'BNS'
    ) 
    bank = Bank.new(
    bank_name: 'BNS'
    )
    
    expect(bank).to have(1).errors_on(:bank_name)
    
  end 
 
  it 'is invalid without a bank name' do 
    expect(FactoryGirl.build(:bank, bank_name: nil)).to have(1).errors_on(:bank_name)
  end 
  
  
end
