require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
 fixtures :addresses
  test "login and browse site" do
  	 assert_difference -> {Address.count}, 1 do
     post :edit, address: {first_name: "", last_name: "", city: "", zip_code: "", street: "", email: ""}
    end
  end

end
