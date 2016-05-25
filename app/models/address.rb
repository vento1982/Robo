class Address < ActiveRecord::Base
  belongs_to :order
  
  validates :first_name, :last_name, :city, :zip_code, :street, :email, presence: true
end
