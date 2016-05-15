class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_then: 0.0}
  validates :category, presence: true

  mount_uploader :photo, ProductPhotoUploader
end
