class Writer < ActiveRecord::Base

  has_many :stories
  belongs_to :photo180, :class_name => 'Image'
  belongs_to :photo280, :class_name => 'Image'
  validates :first_name, :presence => true
  validates :last_name, :presence => true
    
  def fullname
    "#{self.first_name} #{self.last_name}"
  end
  
  def name
    "#{self.last_name}, #{self.first_name}"
  end
  
  def to_param
     "#{self.id}-#{self.first_name.parameterize}-#{self.last_name.parameterize}"
  end
  
end
