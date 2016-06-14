require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  
  def setup
  	@order = Order.new(shipping_cost: "11", id: "1")
  	assert_equal 23, @order.full_cost
  end

  test "find" do 
  	assert_equal 10, orders(:one).shipping_cost
  end
  	
end
