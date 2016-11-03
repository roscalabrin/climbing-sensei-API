class SavedDaySerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :exercises, serializer: ExerciseSerializer
end
