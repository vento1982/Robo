class Order < ActiveRecord::Base
  belongs_to :shipping_type
  has_many :lines_items
  has_one :address

  def full_cost
  	lines_item.map{ |e| e.full_price}.sum + shipping_cost
  end

end
