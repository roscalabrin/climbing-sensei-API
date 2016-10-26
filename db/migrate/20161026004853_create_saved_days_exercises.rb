class CreateSavedDaysExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_days_exercises do |t|
      t.references :saved_day, foreign_key: true
      t.references :exercise, foreign_key: true
    end
  end
end
