class AddAttributeToTableWriters < ActiveRecord::Migration
  def self.up
    add_column :artists, :photo180_id, :integer
  end

  def self.down
    remove_column :artists, :photo180_id
  end
end
