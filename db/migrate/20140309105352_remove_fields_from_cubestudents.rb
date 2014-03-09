class RemoveFieldsFromCubestudents < ActiveRecord::Migration
  def self.up
    remove_column :cubestudents, :sash_id
    remove_column :cubestudents, :level
  end
end
