require 'spec_helper'

describe Confluence do

  describe Confluence::Application do
    
    context "class" do
      let(:api) { Confluence::Application }
      describe "#source_root" do
        it "should should point to an existing folder" do
          api.source_root.should =~ /confluence\/lib\/confluence\/templates$/
          File.exists?(api.source_root).should be_true
          File.directory?(api.source_root).should be_true
        end
      end
    end

    context "instance" do
      let(:app) { Confluence::Application.start ["new", "assfag"] }

      describe "#new" do
        it "should create the application that I demand it to" do
          app
          fail "Until this becomes an automated process, YOU need to go and delete the test folder yourself"
        end
      end
    end

  end

end