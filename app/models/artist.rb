class Artist < ActiveRecord::Base

  acts_as_indexed :fields => [:first_name, :last_name, :bio, :links]
  
  #validations
  validates :first_name, :presence => true
  #validates :last_name, :presence => true
  #validates :bio, :presence => true
  validates :photo180_id, :presence => true
  validates :photo280_id, :presence => true
  
  #relationships
  has_many :books
  belongs_to :photo180, :class_name => 'Image'
  belongs_to :photo280, :class_name => 'Image'
    
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
