class Story < ActiveRecord::Base

  acts_as_indexed :fields => [:title]
  
  belongs_to :artist
  belongs_to :writer
  belongs_to :gallery
  belongs_to :cover180, :class_name => 'Image'
  belongs_to :cover280, :class_name => 'Image'
  
  validates :title, :presence => true, :uniqueness => true
  
  def to_param
     "#{self.id}-#{self.title.parameterize}"
  end
  
end
