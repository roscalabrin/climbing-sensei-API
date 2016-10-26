class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.text :name
      t.text :goal
      t.text :video_path
      t.text :description
      t.integer :reps_number
      t.integer :rest_time
      t.text :beta
    end
  end
end
