class AddColumToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :fatigue, :decimal
  end
end
