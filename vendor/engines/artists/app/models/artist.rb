class Artist < ActiveRecord::Base

  acts_as_indexed :fields => [:first_name, :last_name, :bio, :links]
  
  validates_presence_of :first_name
  validates_uniqueness_of :first_name
  
  belongs_to :photo280, :class_name => 'Image'


end
