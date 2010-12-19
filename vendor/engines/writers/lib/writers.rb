require 'refinery'

module Refinery
  module Writers
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "writers"
          plugin.activity = {:class => Writer,
          :title => 'first_name'
        }
        end
      end
    end
  end
end
