class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
    end
  end
end
