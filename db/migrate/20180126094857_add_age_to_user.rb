class AddAgeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer, null: false, default: 0
  end
end
