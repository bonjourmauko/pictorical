class AddHttpRefererToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :http_referer, :string
  end

  def self.down
    remove_column :candidates, :http_referer
  end
end
