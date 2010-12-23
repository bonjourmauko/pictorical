class RemoveFromTableStories < ActiveRecord::Migration
  def self.up
    remove_column :stories, :cover180_id
    remove_column :stories, :cover280_id
    remove_column :stories, :gallery_id
  end

  def self.down
    add_column :stories, :cover180_id
    add_column :stories, :cover280_id
    add_column :stories, :gallery_id
  end
end
