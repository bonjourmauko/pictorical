module CandidatesHelper
  
  
  def facebook_tag
    output = "<script src='http://connect.facebook.net/en_US/all.js#xfbml=1'></script><fb:like href='http://facebook.com/pictorical' layout='box_count' width='50' font='lucida grande'></fb:like>"
    output.html_safe
  end
  
  def twitter_tag
    output = "<a href='http://twitter.com/share' class='twitter-share-button' data-url='http://artists.pictorical.com' data-text='Artists: Earn money illustrating the world's most beautiful stories' data-count='vertical' data-via='Pictorical' data-related=''>Tweet</a><script type='text/javascript' src='http://platform.twitter.com/widgets.js'></script>"
    output.html_safe
  end
  
  def token_url
    "http://pictorical.com/apply/" + @candidate[:token]
  end
  
end
