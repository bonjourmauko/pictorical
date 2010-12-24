class Book < ActiveRecord::Base

  acts_as_indexed :fields => [:title]
  
  #validations
  validates :title, :presence => true
  validates :artist_id, :presence => true
  validates :cover180_id, :presence => true
  validates :cover280_id, :presence => true
  validates :gallery_id, :presence => true
  
  #relationships
  belongs_to :artist
  belongs_to :writer 
  belongs_to :cover180, :class_name => 'Image'
  belongs_to :cover280, :class_name => 'Image'
  belongs_to :gallery
  
#  def artist
#    self.artists.first
#  end
  
#  def artist.fullname
#    self.artists.first.fullname
#  end
  
#  def writer
#    self.writers.first
#  end

#  def artist.fullname
#     self.writers.first.fullname
#  end  
  
  def to_param
     "#{self.id}-#{self.title.parameterize}"
  end

end
