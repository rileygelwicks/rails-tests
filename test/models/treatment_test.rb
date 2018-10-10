require 'test_helper'

class TreatmentTest < ActiveSupport::TestCase
  test "treatments should have people" do
    assert treatments(:one).patient.presence
  end
end
