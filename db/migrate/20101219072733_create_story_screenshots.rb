class CreateStoryScreenshots < ActiveRecord::Migration

  def self.up
    create_table :story_screenshots do |t|
      t.string :title
      t.integer :screenshot1_id
      t.integer :screenshot2_id
      t.integer :screenshot3_id
      t.integer :screenshot4_id
      t.integer :screenshot5_id
      t.integer :screenshot6_id
      t.integer :screenshot7_id
      t.integer :screenshot8_id
      t.integer :screenshot9_id
      t.integer :screenshot10_id
      t.integer :screenshot11_id
      t.integer :screenshot12_id
      t.integer :screenshot13_id
      t.integer :screenshot14_id
      t.integer :screenshot15_id
      t.integer :screenshot16_id
      t.integer :screenshot17_id
      t.integer :screenshot18_id
      t.integer :screenshot19_id
      t.integer :screenshot20_id
      t.integer :position

      t.timestamps
    end

    add_index :story_screenshots, :id

    load(Rails.root.join('db', 'seeds', 'story_screenshots.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Story Screenshots"})

    Page.delete_all({:link_url => "/story_screenshots"})

    drop_table :story_screenshots
  end

end
