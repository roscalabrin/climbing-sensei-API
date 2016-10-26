class Exercise < ApplicationRecord
  validates :name, 
            :goal, 
            :video_path, 
            :reps_number, 
            :rest_time, 
            :description, 
            :beta, presence: true
  has_many :intensities
  has_many :levels
  has_many :exercises_tags
  has_many :tags, through: :exercises_tags
  has_many :saved_days_exercises
  has_many :saved_days, though: :saved_days_exercises
end
