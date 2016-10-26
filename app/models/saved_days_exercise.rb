class SavedDaysExercise < ApplicationRecord
  belongs_to :saved_day
  belongs_to :exercise
end
