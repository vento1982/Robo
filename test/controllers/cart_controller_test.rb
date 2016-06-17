require 'test_helper'

class CartControllerTest < ActionController::TestCase
  
  setup do
    @order = orders(:one)
  end

  test "should get show" do
    get :show
    assert_response :success
    assert_not_nil assigns(:cart)
  end

  test "should get edit" do
    get :edit
    assert_response :success
    assert_not_nil assigns(:cart)
  end

  test "test dt create" do
     assert_difference -> {Address.count}, 1 do
     post :edit, id: @order, address: {first_name: "", last_name: "", city: "", zip_code: "", street: "", email: ""}
    end
  end

  #test "should destroy line_item" do
   # assert_difference -> { LineItem.count }, -1 do
    #  delete :remove_product, id: @line_item
    #end
  #end

  test "should update current cart" do
    patch :update, id: @order, order: {shipping_type_id: @order.shipping_type_id, comment: @order.comment}   
  end


end
