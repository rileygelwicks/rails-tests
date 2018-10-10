class Patient < ApplicationRecord
  belongs_to :facility, optional: false
  
  has_many :admissions
  has_many :allergies
  has_many :diagnoses 
  has_many :diagnostic_procedures
  has_many :medications, class_name: 'MedicationOrder'
  has_many :treatments

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

  def chronic_conditions
    diagnoses.unscoped.chronic
  end
end
