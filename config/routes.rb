Refinery::Application.routes.draw do

  root :to => 'books#home'
  
  match "/terms-and-conditions", :to => "pages#terms_and_conditions", :as => :terms_and_conditions, :via => :get
  match "/privacy-policy", :to => "pages#privacy_policy", :as => :privacy_policy, :via => :get
  match "/website-disclaimer", :to => "pages#website_disclaimer", :as => :website_disclaimer, :via => :get
  match "/copyright-notice", :to => "pages#copyright_notice", :as => :copyright_notice, :via => :get
  match "/legal", :to => "pages#legal", :as => :legal, :via => :get
  match "/about-us", :to => "pages#about_us", :as => :about_us, :via => :get
  match "/faq", :to => "pages#faq", :as => :faq, :via => :get
  match "/press-kit", :to => "pages#press_kit", :as => :press_kit, :via => :get
  
  match "/apply", :to => "candidates#new", :as => :new_candidate, :via => :get
  match "/apply/:referral", :to => "candidates#new", :as => :new_candidate, :via => :get
  match "/apply/share/:token", :to => "candidates#share", :as => :share_candidate, :via => :get
  
  resources :candidates, :only => [:create]
  
  match "/admin/candidates/:id/accept", :to => "admin/candidates#accept", :as => :accept_candidate
  match "/admin/candidates/:id/reject", :to => "admin/candidates#reject", :as => :reject_candidate
  
  
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
