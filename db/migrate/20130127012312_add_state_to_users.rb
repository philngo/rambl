class AddStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :state_id, :integer
  end
end
