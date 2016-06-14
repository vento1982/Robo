require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
	test "full price" do
		l = LineItem.create(unit_price: "12", quantity: "3")
		assert_equal 36, l.full_price
	end
end
