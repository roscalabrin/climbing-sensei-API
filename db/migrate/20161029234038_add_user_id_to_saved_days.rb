class AddUserIdToSavedDays < ActiveRecord::Migration[5.0]
  def change
    add_reference :saved_days, :user, foreign_key: true
  end
end
