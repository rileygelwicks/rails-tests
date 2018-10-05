require 'test_helper'

class SymptomTest < ActiveSupport::TestCase
  test "patients should have symptoms through admissions" do
    assert patients(:jane).admission.symptoms.first.present?
  end
end
