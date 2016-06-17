require 'test_helper'

class Admin::ProductsControllerTest < ActionController::TestCase

  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response 401
  end

  test "should get new" do
    get :new
    assert_response 401
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response 401
  end

end
