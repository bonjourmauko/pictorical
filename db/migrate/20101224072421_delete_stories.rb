class DeleteStories < ActiveRecord::Migration
  def self.up
    drop_table :stories
    drop_table :books_stories
  end

  def self.down
    
  end
end
