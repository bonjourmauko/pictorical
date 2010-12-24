class RemoveColumnFromGalleries < ActiveRecord::Migration
  def self.up
    remove_column :galleries, :body
    remove_column :gallery_entries, :body
  end

  def self.down
    add_column :galleries, :body, :text
    add_column :gallery_entries, :body, :text
  end
end
