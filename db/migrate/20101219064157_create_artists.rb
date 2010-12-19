class CreateArtists < ActiveRecord::Migration

  def self.up
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.text :links
      t.integer :photo280_id
      t.integer :position

      t.timestamps
    end

    add_index :artists, :id

    load(Rails.root.join('db', 'seeds', 'artists.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Artists"})

    Page.delete_all({:link_url => "/artists"})

    drop_table :artists
  end

end
