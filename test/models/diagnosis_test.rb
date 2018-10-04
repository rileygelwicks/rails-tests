require 'test_helper'

class DiagnosisTest < ActiveSupport::TestCase

  test "Diagnosis description must be present" do
    d = Diagnosis.create()
    assert_equal d.valid?, false, 'Diganoses must have a description'
  end

end
