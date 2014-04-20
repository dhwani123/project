class AddFieldsToCubestudents < ActiveRecord::Migration
  def self.up
    add_column :cubestudents, :sash_id, :integer
    add_column :cubestudents, :level, :integer, :default => 0
  end

  def self.down
    remove_column :cubestudents, :sash_id
    remove_column :cubestudents, :level
  end
end
