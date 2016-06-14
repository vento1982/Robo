class Address < ActiveRecord::Base
  belongs_to :order
  
  before_save { self.email = email.downcase }
  
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :zip_code, presence: true, length: { maximum: 10 }
  validates :street, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, 
  					format: { with: VALID_EMAIL_REGEX },
  					uniqueness: {case_sensitive: false}
end
