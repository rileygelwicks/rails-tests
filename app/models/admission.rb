class Admission < ApplicationRecord
  belongs_to :patient, optional: false
  has_many :diagnoses
  has_many :symptoms

  def date
    moment.to_date.to_formatted_s(:long_ordinal)
  end

  def time
    moment.strftime('%l:%M %P')
  end
end
