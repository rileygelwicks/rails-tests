class Patient < ApplicationRecord
  belongs_to :facility

  enum gender: [
    :male,
    :female,
    :other
  ] 
  
end
