
class EmployeeReview < ActiveRecord::Base

  
  belongs_to :review_type 
  belongs_to :employee
  accepts_nested_attributes_for :review_type
end
