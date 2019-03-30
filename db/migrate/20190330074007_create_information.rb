class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.datetime :training_date 
      t.integer :athlete_id 
      t.string :name, comment: "預備用填寫名字" 
      t.integer :rest_heart_rate
      t.decimal :training_duration
      t.decimal :rpe
      t.text :memo 
      t.integer :athlete_record_id 

      t.timestamps
    end
  end
end
