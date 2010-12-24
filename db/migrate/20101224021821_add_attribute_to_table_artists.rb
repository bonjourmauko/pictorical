class AddAttributeToTableArtists < ActiveRecord::Migration
  def self.up
    add_column :writers, :photo180_id, :integer
  end

  def self.down
    remove_column :writers, :photo180_id
  end
end
