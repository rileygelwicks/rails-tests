class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient

  def time
    moment.strftime('%l:%M %P')
  end
end
