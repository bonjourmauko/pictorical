class AddAcceptedToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :accepted, :string
  end

  def self.down
    remove_column :candidates, :accepted
  end
end
