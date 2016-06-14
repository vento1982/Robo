require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    assert_not_nil assigns(:cart)
  end

  test "should get edit" do
    get :edit
    assert_response :success
    assert_not_nil assigns(:cart)

    assert_difference -> {Address.count} do
      post :edit, address: {first_name: "", last_name: "", city: "", zip_code: "", street: "", email: ""}
    end
  end


end
