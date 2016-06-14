require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  def setup
  	@address = Address.new(first_name: "test_first", last_name: "test_last", city: "test_city", zip_code: "test_zip", street: "test_street", email: "test_email")
  end

  #test "should be valid" do
  #	assert @address.valid?
  #end

  test "first_name should be vaild" do
  	@address.first_name = ""
  	assert_not @address.valid?
  end

  test "last_name should be valid" do
  	@address.last_name = " "
  	assert_not @address.valid?
  end

  test "city should be valid" do
  	@address.city = " "
  	assert_not @address.valid?
  end

  test "zip_code should be valid" do
  	@address.zip_code = " "
  	assert_not @address.valid?
  end

  test "street should be valid" do
  	@address.street = " "
  	assert_not @address.valid?
  end

  test "email should be valid" do
  	@address.email = " "
  	assert_not @address.valid?
  end

  test "first_name should not to be long" do
  	@address.first_name = "a" * 51
  	assert_not @address.valid?
  end

  test "last_name should not be to long" do
  	@address.last_name = "b" * 51
  	assert_not @address.valid?
  end

  test "city should not be to long"  do
  	@address.city = "c" * 51
  	assert_not @address.valid?
  end

  test "zip_code should not be to long" do
  	@address.zip_code = "d" * 11
  	assert_not @address.valid?
  end

  test "street should not be to long" do
  	@address.street = "e" * 51
  	assert_not @address.valid?
  end

  test "email should not be long" do
  	@address.email = "f" * 244 + "@example.com"
  	assert_not @address.valid?
  end

  test "email validation should accept valid addresses" do
  	valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
    	@address.email = valid_address
    	assert  @address.valid?, "#{valid_address.inspect} should be valid"
  	end
  end

  test "email validation should reject invalid addresses" do
  	invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
    	@address.email = invalid_address
    	assert_not @address.valid?, "#{invalid_address.inspect} shoud be invalid"
    end
  end

  test "email addresses should by unique" do
  	duplicate_address = @address.dup
  	@address.save
  	assert_not duplicate_address.valid?, " #{duplicate_address.inspect} shoudl be invalide"
  end
end
