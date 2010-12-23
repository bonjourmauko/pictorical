class Book < ActiveRecord::Base

  acts_as_indexed :fields => [:title]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :cover180, :class_name => 'Image'
  belongs_to :cover280, :class_name => 'Image'


end
