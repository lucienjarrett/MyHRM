class User < ActiveRecord::Base
  has_secure_password 
  validates_uniqueness_of :email
 # validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  
  
  def generate_token 
    begin 
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
    
  end 
  
  def send_password_reset 
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now 
    save!
    UserMailer.password_reset(self).deliver
  end 
  
end
