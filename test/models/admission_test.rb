require 'test_helper'

class AdmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "belongs to patient" do
    admission = Admission.create(moment: Time.now, patient: patients(:john))
    assert_equal admission.patient.id, patients(:john).id 
  end

  test "validates patience presence" do
    admission = Admission.create(moment: Time.now, patient: patients(:john))
    assert admission.valid?
  end


  test "date should return the admission moment date" do
    admission = admissions(:two)
    assert_equal 'October 1st, 2018', admission.date
  end

  test "time should return admission moment time" do
    admission = admissions(:two)
    assert_equal '10:20 am', admission.time
  end
end
