class Patient < ApplicationRecord
  belongs_to :facility, optional: false
  has_many :admissions
  has_many :diagnoses

  enum gender: [
    :male,
    :female,
    :other
  ] 
  
  def admission
    admissions.order(created_at: :desc).first
  end

  def age 
    ((Time.now - dob) / 60 / 60 / 24 / 365).floor
  end
  
  def formal_name
    "#{last_name}, #{first_name} #{middle_name}"
  end
  
  def full_name
  "#{first_name} #{middle_name} #{last_name}"
  end
end
