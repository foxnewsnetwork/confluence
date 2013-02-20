require 'spec_helper'

describe Confluence::Rails::Railtie do 
  it "should have been properly initialized with rails startup" do
    WelcomeController.view_paths.should include Confluence::Railties::Resolver.instance
  end
end