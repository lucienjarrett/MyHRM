class EmployeeContact < ActiveRecord::Base
  belongs_to :relationship 
  belongs_to :employee
  accepts_nested_attributes_for :relationship
  
  validates :first_name, :last_name, :phone_number, presence: true
  
end
