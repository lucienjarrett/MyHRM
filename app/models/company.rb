class Company < ActiveRecord::Base
  has_many :employees
  has_many :locations
end
