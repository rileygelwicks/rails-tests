class Patient < ApplicationRecord
  belongs_to :facility, optional: false
  has_many :admissions

  enum gender: [
    :male,
    :female,
    :other
  ] 

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
  
  def formal_name
    "#{last_name}, #{first_name} #{middle_name}"
  end

  def admission
    admissions.order(created_at: :desc).first
  end
end
