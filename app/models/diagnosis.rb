class Diagnosis < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :admission, optional: true
  validates :description, presence: true
end
