require 'test_helper'

class PatientTest < ActiveSupport::TestCase

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
    assert_equal patient.admission.moment, patient.admissions.order(created_at: :desc).first.moment 
  end

  test "patients age should be calculated from DOB and returned in years" do
    patient = patients(:john)
    assert_equal patient.age, 47
  end

  test "patients should have observations on their admissions" do 
    john = patients(:john)
    assert john.admission.observations.presence, "observations should be present"
  end

  test "patients should have many diagnoses" do 
    assert patients(:john).diagnoses.count > 1, "John should have two diagnoses"
  end

  test "patients should have allergies" do 
    assert patients(:jane).allergies.presence, "Jane is missing allergies"
  end

  test "patients have many medications" do
    assert patients(:john).medications.count > 1, "John should have more than one MO."
  end

  test "patients have many diagnostic procedures" do
    assert patients(:john).diagnostic_procedures.count > 0
  end

  test "patients should have treatments" do
    assert patients(:jane).treatments.presence
  end
  
  test "patients should have chronic conditions" do
    assert patients(:john).chronic_conditions.presence
  end
end
