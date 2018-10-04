require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "patient belongs_to facility assoc works" do
    p = Patient.create(first_name: "john", facility: facilities(:one))
    assert p.facility.present?
  end

  test "patients can't be created without a facility" do
    patient = Patient.create(first_name: "john")
    assert_nil patient.id
  end

  test "patients most recent admission is returned" do
    patient = patients(:john)
  end

  test "patients age should be calculated from DOB and returned in years" do
    patient = patients(:john)
    assert_equal patient.age, 47
  end
end
