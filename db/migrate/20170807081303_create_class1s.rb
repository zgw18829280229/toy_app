class CreateClass1s < ActiveRecord::Migration
  def change
    create_table :class1s do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
