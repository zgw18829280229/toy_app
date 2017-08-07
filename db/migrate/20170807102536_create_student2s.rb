class CreateStudent2s < ActiveRecord::Migration
  def change
    create_table :student2s do |t|
      t.string :name
      t.integer :age
      t.integer :class1_id

      t.timestamps null: false
    end
  end
end
