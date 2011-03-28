require 'refinery'

module Refinery
  module Candidates
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "candidates"
          plugin.activity = {:class => Candidate,
          :title => 'name'
        }
        end
      end
    end
  end
end
