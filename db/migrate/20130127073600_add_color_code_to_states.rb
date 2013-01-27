class AddColorCodeToStates < ActiveRecord::Migration
  def change
    add_column :states, :color_code, :string, default: "#FFFFFF"
  end
end
