class ExercisesTag < ApplicationRecord
  belongs_to :exercise
  belongs_to :tag
end
