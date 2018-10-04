class Admission < ApplicationRecord
  belongs_to :patient, optional: false
end
