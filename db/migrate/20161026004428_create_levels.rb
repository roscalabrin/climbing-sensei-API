class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.integer :sets
      t.time :duration
      t.references :exercise, foreign_key: true
    end
  end
end
