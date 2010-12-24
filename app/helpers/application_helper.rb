# Methods added to this helper will be available to all templates in the application.

# You can extend refinery with your own functions here and they will likely not get overriden in an update.
module ApplicationHelper
  include Refinery::ApplicationHelper # leave this line in to include all of Refinery's core helper methods.

  def colorcircle(a)
    "c" + (a%4).to_s
  end
  
  
  
  def facebooklike(path, css ='')
    url = 'http://pictorical.com' + path
    escape_url = CGI::escape url
    '<iframe src="http://www.facebook.com/plugins/like.php?href=' + escape_url + '&amp;layout=button_count&amp;show_faces=false&amp;width=100&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100px; height:21px; margin-bottom: -5px; ' + css + '" allowtransparency="true"></iframe>'
  end
  
  
  def facebookpagelike
    url = 'http://facebook.com/Pictorical'
    escape_url = CGI::escape url
    '<iframe src="http://www.facebook.com/plugins/like.php?href=' + escape_url + '&amp;layout=button_count&amp;show_faces=false&amp;width=100&amp;action=like&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100px; height:21px; margin-bottom: -5px;" allowtransparency="true"></iframe>'
  end
  
  
  def facebookshare(path)
    url = 'http://pictorical.com' + path
    '<a name="fb_share" type="button_count" share_url="'+ url +'" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>'
  end

  def full_url_for(x)
    'http://pictorical.com' + url_for(x)
  end
  
  def tokenizer(first_name, last_name)
    Digest::MD5.hexdigest("#{first_name.split.first}#{last_name.split.first}".downcase!)
  end
  
  
  

end
