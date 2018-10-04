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



end
