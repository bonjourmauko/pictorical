Refinery::Application.routes.draw do
  
  root :to => 'books#home', :constraints => {:subdomain => ""}
    
  # REFINERY CMS ================================================================

  filter(:refinery_locales) if defined?(RoutingFilter::RefineryLocales) # optionally use i18n.
    
  # connect ':controller/:action/:id'
  # connect ':controller/:action/:id.:format'

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    root :to => 'dashboard#index'
  end

  # Marketable URLs should be appended to routes by the Pages Engine.
  # Catch all routes should be appended to routes by the Core Engine.

  # END REFINERY CMS ============================================================

end
