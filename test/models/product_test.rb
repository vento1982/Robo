require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  def setup
 	@product = Product.new(id: "1", name: "Lokówka", description: "super lokówka", long_description: "super super lodówka", price: 10.0, category_id: 1)
  end
  
  test "name should be valid" do
  	@product.name = ""
  	assert_not @product.valid?
  end

  test "desc should be valid" do
  	@product.description = ""
  	assert_not @product.valid?
  end

  test "price should be valid" do
  	@product.price = ""
  	assert_not @product.valid?
  end

  test "category_id should be valid" do
  	@product.category_id = ""
  	assert_not @product.valid?
  end

  test "name should not be to long" do
  	@product.name = "a" * 51
  	assert_not @product.valid?
  end

  test "desc should not be long" do
  	@product.description = "a" * 256
  	assert_not @product.valid?
  end

  test "price should not be < 0" do
  	@product.price  = -10.0
  	assert_not @product.valid?
  end

   test "price should not be = 0" do
  	@product.price  = 0
  	assert_not @product.valid?
  end

  test "to param" do
  	assert_equal "1-lokowka", @product.to_param
  end

end
