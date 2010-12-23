class CreateJoinTableStoriesBooks < ActiveRecord::Migration
  def self.up
    create_table :stories_books, :id => false do |t|
      t.references :story, :book
    end
  end

  def self.down
    drop_table :stories_books
  end
end
