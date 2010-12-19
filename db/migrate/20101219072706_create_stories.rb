class CreateStories < ActiveRecord::Migration

  def self.up
    create_table :stories do |t|
      t.string :title
      t.integer :artists_id
      t.integer :writers_id
      t.integer :cover180_id
      t.integer :cover280_id
      t.integer :story_screenshots_id
      t.integer :position

      t.timestamps
    end

    add_index :stories, :id

    load(Rails.root.join('db', 'seeds', 'stories.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Stories"})

    Page.delete_all({:link_url => "/stories"})

    drop_table :stories
  end

end
