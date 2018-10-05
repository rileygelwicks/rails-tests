require 'test_helper'

class FacilityTest < ActiveSupport::TestCase
  test "facilities should have patients" do
    assert facilities.first.patients.count > 0, "First facility should have more than 1 patient"
    assert facilities.second.patients.count > 0
  end
end
