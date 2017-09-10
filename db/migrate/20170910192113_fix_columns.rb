class FixColumns < ActiveRecord::Migration[5.1]
  def change
  	
  	add_column :attendances, :attended_event_id, :int
  	add_column :attendances, :attendee_id, :int
  	add_index :attendances, :attended_event_id
  	add_index :attendances, :attendee_id
  
  end
end
