class Candidate < ActiveRecord::Base
  attr_accessible   :name,
                    :country,
                    :email,
                    :portfolio
                    
  attr_protected    :token
end
