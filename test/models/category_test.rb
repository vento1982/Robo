require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
	
	def setup
		@category = Category.new(id: "1", name: "Marcin")
	end

	test "name should be valid" do
		@category.name = ""
		assert_not @category.valid?
	end

	test "name should not to be long" do
		@category.name = "n" * 51
		assert_not @category.valid?, "Name should not be long > 50"
	end

	test "to prams" do
		assert_equal "1-marcin", @category.to_param
	end
end
