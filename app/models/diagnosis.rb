class Diagnosis < ApplicationRecord
  default_scope { self.acute } 

  belongs_to :patient, optional: true
  belongs_to :admission, optional: true
  validates :description, presence: true

  enum condition_type: [
    :chronic,
    :acute,
    :other
  ]
end
