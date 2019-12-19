require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  def setup
    @order = Order.new(name: "Example User", request: "PB&J")
  end

  test "should be valid" do
    assert @order.valid?
  end

  test "name should be present" do
    @order.name = "     "
    assert_not @order.valid?
  end

  test "request should be present" do
    @order.request = "     "
    assert_not @order.valid?
  end
end
