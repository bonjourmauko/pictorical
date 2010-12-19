class RenameColumnFromStories < ActiveRecord::Migration
  def self.up
    rename_column :stories, :artists_id, :artist_id
    rename_column :stories, :writers_id, :writer_id
    rename_column :stories, :story_screenshots_id, :story_screenshot_id
  end

  def self.down
    rename_column :stories, :artist_id, :artists_id
    rename_column :stories, :writer_id, :writers_id
    rename_column :stories, :story_screenshot_id, :story_screenshots_id    
  end
end
