require 'test_helper'

class ProductsControllerTest < ActionController::TestCase

  setup do
	@product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get show" do
    get :show, id: @product
    assert_response :success
    assert_not_nil assigns(:product)
    assert_not_nil assigns(:category)
  end

end
