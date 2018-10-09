class MedicationOrder < ApplicationRecord
  belongs_to :patient
  
  enum unit: [
    :mg
  ]

  enum route: [
    :PO,
    :IM,
    :SC
  ]
end
