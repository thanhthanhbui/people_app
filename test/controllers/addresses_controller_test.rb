require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_address" do
    get addresses_new_address_url
    assert_response :success
  end

  test "should get edit_address" do
    get addresses_edit_address_url
    assert_response :success
  end

  test "should get show_address" do
    get addresses_show_address_url
    assert_response :success
  end

end
