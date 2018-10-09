require 'test_helper'

class DiagnosticProcedureTest < ActiveSupport::TestCase
  test "Procedures should belong to patients" do
    dp = diagnostic_procedures.first
    assert dp.patient, "Procedures should have associated patients."
  end
end
