class RemoveMoreColumns < ActiveRecord::Migration[5.1]
  def self.up
  	remove_column :attendances, :attended_event
  	remove_column :attendances, :attendee
  end
end
