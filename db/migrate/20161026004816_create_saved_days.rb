class CreateSavedDays < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_days do |t|
      t.text :title
      t.references :user, foreign_key: true
    end
  end
end
