class CreateIntensities < ActiveRecord::Migration[5.0]
  def change
    create_table :intensities do |t|
      t.text :title
      t.text :description
      t.references :exercise, foreign_key: true
    end
  end
end
