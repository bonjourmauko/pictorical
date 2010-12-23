class Story < ActiveRecord::Base

  acts_as_indexed :fields => [:title]
  has_and_belongs_to_many :books
  validates :title, :presence => true, :uniqueness => true
  belongs_to :artist
  belongs_to :writer
  
  def to_param
     "#{self.id}-#{self.title.parameterize}"
  end
  
end
