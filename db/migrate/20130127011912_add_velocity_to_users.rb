class AddVelocityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :velocity, :integer, default: 0
  end
end
