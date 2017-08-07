class CreateStudent1s < ActiveRecord::Migration
  def change
    create_table :student1s do |t|
      t.string :name
      t.integer :class1_id

      t.timestamps null: false
    end
  end
end
