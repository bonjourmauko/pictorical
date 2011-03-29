class CreateCandidates < ActiveRecord::Migration

  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :portfolio
      t.string :country
      t.string :referral
      t.string :http_referer
      t.integer :position

      t.timestamps
    end

    add_index :candidates, :id

    load(Rails.root.join('db', 'seeds', 'candidates.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Candidates"})

    Page.delete_all({:link_url => "/candidates"})

    drop_table :candidates
  end

end
