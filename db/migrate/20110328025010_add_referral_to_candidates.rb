class AddReferralToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :referral, :string
  end

  def self.down
    remove_column :candidates, :referral
  end
end
