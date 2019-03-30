class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :name 
      t.integer :rest_heat_rate
      t.decimal :training_duration
      t.decimal :training_date 
      t.integer :athlete_id 
      t.integer :athlete_record_id 
      t.text :memo 

      t.timestamps
    end
  end
end
