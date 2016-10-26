class CreateExercisesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises_tags do |t|
      t.references :exercise, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
