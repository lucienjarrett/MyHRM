class EmployeeJob < ActiveRecord::Base
  belongs_to :employee
  #validates_presence_of :employee
end
