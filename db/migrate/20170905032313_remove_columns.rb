class RemoveColumns < ActiveRecord::Migration[5.1]
  def self.up
  	remove_column :events, :creator_id
  end
end
