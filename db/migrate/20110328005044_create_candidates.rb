class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :country
      t.string :email
      t.string :portfolio
      t.string :token

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
