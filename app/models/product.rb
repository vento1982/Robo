class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :price, numericality: {greater_than: 0.0}
  validates :category_id, presence: true

  mount_uploader :photo, ProductPhotoUploader

  def to_param
  	"#{id}-#{name}".parameterize
  end
end
