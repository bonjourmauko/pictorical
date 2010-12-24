class RemoveStoriesGarbage < ActiveRecord::Migration
  def self.up
    UserPlugin.where(:name => :stories).each { |t| t.destroy }
    Slug.where(:name => "stories-page").each { |t| t.destroy }
    Page.where(:title => "Stories").each { |t| t.destroy! }
    PagePart.where(:page_id => 9).each { |t| t.destroy }
  end

  def self.down
    # sayonara
    raise ActiveRecord::IrreversibleMigration, "They're in peace now are in the Hawai with Michael Jackson and Elvis Presley"
  end
end
