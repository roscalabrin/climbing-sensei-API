class Level < ApplicationRecord
  validates :sets, :duration, presence: true
  belongs_to :exercise
end
