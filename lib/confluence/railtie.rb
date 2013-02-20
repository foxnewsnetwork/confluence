require File.join File.dirname(__FILE__), "railties", "resolver"

module Confluence
  module Rails
    class Railtie < ::Rails::Railtie
      # expose the confluence controller runtime
      initializer "confluence.setup" do |app|
        ActiveSupport.on_load(:action_controller) do
          append_view_path Confluence::Railties::Resolver.instance
        end
      end
    end
  end
end