require 'test_helper'

class MedicationOrderTest < ActiveSupport::TestCase
  test "MO belongs to patient" do
    medication_orders.first.patient.presence
  end
end
