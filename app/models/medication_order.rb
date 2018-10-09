class MedicationOrder < ApplicationRecord
  belongs_to :patient
  has_one :order_frequency
  
  enum unit: [
    :mg
  ]

  enum route: [
    :PO,
    :IM,
    :SC
  ]

  def frequency
    "#{order_frequency&.value}#{order_frequency&.unit}"
  end
end
