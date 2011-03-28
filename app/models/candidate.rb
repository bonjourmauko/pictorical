class Candidate < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  
  attr_accessible         :name,
                          :country,
                          :email,
                          :portfolio
                    
  attr_protected          :token,
                          :referral
  
  validates_presence_of   :portfolio, 
                          :name, 
                          :country, 
                          :email
                          
  validates_uniqueness_of :email

  validates_format_of     :email, 
                          :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    
  before_create           :assign_token
  
  private
  
  def assign_token
    self[:token] = truncate(Digest::SHA2.hexdigest(object_id.to_s + ActiveSupport::SecureRandom.hex(50)), :length => 5, :omission => "")
  end
  
end
