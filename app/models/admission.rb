class Admission < ApplicationRecord
  belongs_to :patient, optional: false
  has_many :diagnoses
end
