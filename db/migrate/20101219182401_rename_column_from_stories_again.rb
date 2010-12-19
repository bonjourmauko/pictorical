class RenameColumnFromStoriesAgain < ActiveRecord::Migration
  def self.up
    rename_column :stories, :story_screenshot_id, :gallery_id
  end

  def self.down
  end
end
