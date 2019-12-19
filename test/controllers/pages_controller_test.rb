require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Team Orders Organizer"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Team Orders Organizer"
  end

  test "should get orders" do
    get order_path
    assert_response :success
    assert_select "title", "New Order | Team Orders Organizer"
  end

end
