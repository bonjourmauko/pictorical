class Book < ActiveRecord::Base

  acts_as_indexed :fields => [:title]
  has_and_belongs_to_many :stories
  validate :title, :presence => true, :uniqueness => true
  belongs_to :gallery
  belongs_to :cover180, :class_name => 'Image'
  belongs_to :cover280, :class_name => 'Image'
  
  def to_param
     "#{self.id}-#{self.title.parameterize}"
  end

end
