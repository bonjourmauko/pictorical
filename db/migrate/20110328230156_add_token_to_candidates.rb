class AddTokenToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :token, :string
  end

  def self.down
    remove_column :candidates, :token
  end
end
