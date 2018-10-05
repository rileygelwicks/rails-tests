require 'test_helper'

class PatientControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do

    get facility_patient_url(facilities.first, patients.first)
    assert_response :success
  end

  test "transfer member action" do
    get transfer_facility_patient_url(facilities.first, patients.first)
    assert_response :success
  end

end
