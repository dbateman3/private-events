class AddCreatorToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :creator_id, :int
  end
end
