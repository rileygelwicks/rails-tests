class OrderFrequency < ApplicationRecord
  belongs_to :medication_order

  enum unit: [
    :hr
  ]
end
