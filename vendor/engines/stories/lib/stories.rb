require 'refinery'

module Refinery
  module Stories
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "stories"
          plugin.activity = {:class => Story,}
        end
      end
    end
  end
end
