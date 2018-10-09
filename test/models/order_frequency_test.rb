require 'test_helper'

class OrderFrequencyTest < ActiveSupport::TestCase
  test "Order Frequency belongs to MO" do
    assert order_frequencies.first.medication_order.presence
  end
end
