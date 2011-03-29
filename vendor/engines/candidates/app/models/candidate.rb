class Candidate < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :email, :portfolio, :country, :referral, :http_referer]
  
  validates_presence_of :name
  validates_uniqueness_of :name
  


end
