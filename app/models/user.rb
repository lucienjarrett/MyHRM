class User < ActiveRecord::Base
  has_secure_password 
  before_create { generate_token(:auth_token) }
  
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, :on => :create
    validates :password, length: { minimum: 6 }, :allow_blank => true
    validates :password, length: { minimum: 8 }, :allow_blank => false
    validates :password_confirmation, presence: true, :on => :create
    validates_uniqueness_of :email
    validates_uniqueness_of :user_name
    validates_presence_of :password, :on => :create
    validates_presence_of :user_name, :on=> :create
    validates :first_name, :presence=> true
    validates :last_name, :presence=> true
 

  def send_password_reset 
      generate_token(:password_reset_token)
      self.password_reset_sent_at = Time.zone.now 
      save!
      UserMailer.password_reset(self).deliver
  end

  def generate_token(column) 
    begin 
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end  
end
