class Employee < ActiveRecord::Base 
  belongs_to :marital_status
  belongs_to :department
  belongs_to :company
  belongs_to :parish
  belongs_to :bank
  belongs_to :location
  belongs_to :position
  belongs_to :work_schedule
  

  has_many :employee_educations , :dependent => :destroy, :autosave =>true, :inverse_of => :employee
  has_many :educations, :through => :employee_educations
  
  has_many :employee_contacts , :dependent => :destroy, :autosave =>true, :inverse_of => :employee
  has_many :relationships, :through => :employee_contacts
  
  
  has_many :employee_jobs, :dependent => :destroy

  accepts_nested_attributes_for :employee_educations, :employee_contacts, :employee_jobs

  
  #image uploads 
  mount_uploader :image, ImageUploader
 
  #Virtual Fullname 
  def full_name
    [first_name, last_name].join(' ')
  end


  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end

end
