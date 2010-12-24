class RenameStoriesBooks < ActiveRecord::Migration
  def self.up
    rename_table :stories_books, :books_stories
  end

  def self.down
    rename_table :books_stories, :stories_books
  end
end
