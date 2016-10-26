class Intensity < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :exercise
end
