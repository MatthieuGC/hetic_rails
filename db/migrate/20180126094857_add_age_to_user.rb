class AddAgeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer, null: false, default: 0
    # remove_column :users, :age
    # change_column :users, :aage, :age
  end
end
