require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  setup do
  	@category = categories(:one)
  end

  test "should get show" do
    get :show, id: @category
    assert_response :success
    assert_not_nil assigns(:category)
    assert_not_nil assigns(:products)
  end

end
