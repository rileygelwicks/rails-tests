require 'test_helper'

class PatientControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patient_show_url
    assert_response :success
  end

end
