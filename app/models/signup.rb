class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper

  validates :time, inclusion: 0..23
end
