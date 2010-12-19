class Dumb < ActiveRecord::Migration
  def self.up
    drop_table :story_screenshots
  end

  def self.down
  end
end
