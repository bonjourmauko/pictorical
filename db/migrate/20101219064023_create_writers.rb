class CreateWriters < ActiveRecord::Migration

  def self.up
    create_table :writers do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.text :links
      t.integer :photo280_id
      t.integer :position

      t.timestamps
    end

    add_index :writers, :id

    load(Rails.root.join('db', 'seeds', 'writers.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Writers"})

    Page.delete_all({:link_url => "/writers"})

    drop_table :writers
  end

end
