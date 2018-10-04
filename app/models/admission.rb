class Admission < ApplicationRecord
  belongs_to :patient, optional: false
  has_many :diagnoses

  def date
    moment.to_date.to_formatted_s(:long_ordinal)
  end
end
