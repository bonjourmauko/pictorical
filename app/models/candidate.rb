class Candidate < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  acts_as_indexed :fields => [:name, :email, :portfolio, :country, :token, :referral, :http_referer]

  attr_accessible         :name,
                          :country,
                          :email,
                          :portfolio

  attr_protected          :token,
                          :referral,
                          :http_referer,
                          :accepted

  validates_presence_of   :portfolio,
                          :name,
                          :country,
                          :email

  validates_uniqueness_of :email

  validates_format_of     :email,
                          :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

  before_create           :assign_token
  
  def has_refered candidate
    Candidate.where(:referral => candidate[:token]).count
  end
  
  private

  def assign_token
    self[:token] = truncate(Digest::SHA2.hexdigest(object_id.to_s + ActiveSupport::SecureRandom.hex(50)), :length => 5, :omission => "")
  end

end
