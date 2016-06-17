require 'test_helper'

class HomeRoutesTest < ActionController::TestCase
  
  test "must route to home index" do
    assert_routing '/', { controller: 'products', action: 'index' }
  end

  test "should route to product" do
    assert_routing '/produkt/202', { controller: 'products', action: 'show', id: '202'}
  end

  test "should route to category" do
    assert_routing '/kategoria/1', {controller: 'categories', action: 'show', id: "1"}
  end

  test "should route to show cart" do
    assert_routing '/cart', {controller: 'cart', action: 'show'}
  end 

  test "should route to edit cart" do
    assert_routing '/cart/edit', {controller: 'cart', action: 'edit'}
  end

  test "should route to update cart" do
    assert_routing({ method: 'patch', path: '/cart'},  {controller: 'cart', action: 'update'})
  end

  test "should route to confirmation" do
    assert_routing '/cart/confirmation', {controller: 'cart', action: 'confirmation'}
  end

  test "should route to finish" do
    assert_routing({method: 'post', path: '/cart/finish'}, {controller: 'cart', action: 'finish'})
  end

  test "should route to add product" do
    assert_routing({method: 'post', path: '/cart/add_product'}, {controller: 'cart', action: 'add_product'})
  end

  test "should rout to remove product" do
    assert_routing({method: 'post', path: '/cart/remove_product'}, {controller: 'cart', action: 'remove_product'})
  end

  test "should route to static" do
    assert_routing '/regulami', { controller: 'static', action: 'terms' }
    assert_routing '/polityka-prywatnosci', {controller: 'static', action: 'privacy'}
    assert_routing '/dostawa', {controller: 'static', action: 'shipping'}
    assert_routing '/o-sklepie', { controller: 'static', action: 'about'}
  end
end
