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
      let(:cleaner) do 
        Class.new do 
          def clean(path)
            FileUtils::rm_rf(path)
          end
        end.new
      end
      describe "#new" do
        before :each do
          @project_path = File.expand_path("../assfag", File.dirname(__FILE__))
        end 
        it "should create the application that I demand it to" do
          app
          File.exists?(@project_path).should be_true
        end

        after(:each) do
          cleaner.clean(@project_path) if File.exists?(@project_path)
        end
      end
    end

  end

end