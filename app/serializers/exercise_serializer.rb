class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :goal, :video_path, :description, :reps_number, :rest_time, :beta
end
