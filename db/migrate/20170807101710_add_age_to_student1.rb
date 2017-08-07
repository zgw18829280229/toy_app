class AddAgeToStudent1 < ActiveRecord::Migration
  def change
    add_column :student1s, :age, :integer
  end
end
