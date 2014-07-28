class Employee < ActiveRecord::Base 
  attr_writer :current_step 
  
  belongs_to :marital_status
  belongs_to :department
  belongs_to :company
  belongs_to :parish
  belongs_to :bank
  belongs_to :location
  belongs_to :position
  belongs_to :work_schedule
  
 
  

  has_many :employee_zeducations , :dependent => :destroy, :autosave =>true, :inverse_of => :employee
  has_many :educations, :through => :employee_zeducations
  
  has_many :employee_zcontacts , :dependent => :destroy, :autosave =>true, :inverse_of => :employee
  has_many :relationships, :through => :employee_zcontacts
  
  
  has_many :employee_jobs, :dependent => :destroy

  accepts_nested_attributes_for :employee_zeducations, :employee_zcontacts, :employee_jobs

  
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
  
  
#For multisetp form implementation  
  def current_step 
    @current_step || steps.first
  end 
  
  def steps
    %w[personal employment contacts]
  end 
  
  def next_step
    self.current_step = steps[steps.index(current_step)+1] 
  end 
  
  def previous_step
    self.current_step = steps[steps.index(current_step)-1] 
  end 
  
  def first_step?
    current_step == steps.first
  end 
  
  
  def last_step?
    current_step == steps.last
  end
  
  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end  
end
