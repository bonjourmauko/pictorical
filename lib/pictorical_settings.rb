module PictoricalSettings
  extend self
  
  # Load settings from "pictorical_settings.yml"
  def load(file)
    @settings = YAML.load_file file
  end
  
  # Zendesk Settings
  def dropbox_id
    @settings['dropbox_id']
  end
  
  def url
    @settings['url']
  end
  
  def tab_id
    @settings['tab_id']
  end
  
  def tab_color
    @settings['tab_color']
  end
  
  def tab_position
    @settings['tab_position']
  end
  
  # Google Analytics Settings
  def google_analytics_code
    @settings['google_analytics_code']
  end
  
  # Clicky Settings
  def clicky_code
    @settings['clicky_code']
  end
  
end
