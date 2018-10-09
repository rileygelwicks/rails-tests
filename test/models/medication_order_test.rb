require 'test_helper'

class MedicationOrderTest < ActiveSupport::TestCase
  test "MO belongs to patient" do
    assert medication_orders.first.patient.presence
  end

  test "MO has one order frequency" do
    assert medication_orders(:one).order_frequency.presence
  end

  test "MO Frequency is properly formatted" do
    mo = medication_orders(:one)
    assert_equal mo.frequency, "q4hr", "Should equal q4hr"
  end
end
