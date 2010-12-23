class CreateBooks < ActiveRecord::Migration

  def self.up
    create_table :books do |t|
      t.integer :gallery_id
      t.string :title
      t.integer :cover180_id
      t.integer :cover280_id
      t.integer :position

      t.timestamps
    end

    add_index :books, :id

    load(Rails.root.join('db', 'seeds', 'books.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Books"})

    Page.delete_all({:link_url => "/books"})

    drop_table :books
  end

end
