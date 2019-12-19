require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_path
    assert_response :success
  end

end
