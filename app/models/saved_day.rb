class SavedDay < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :saved_days_exercises
  has_many :exercises, through: :saved_days_exercises
end
