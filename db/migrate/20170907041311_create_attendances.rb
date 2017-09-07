class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :attended_event
      t.integer :attendee

      t.timestamps
    end
    add_index :Attendances, :attended_event
    add_index :Attendances, :attendee
  end
end
