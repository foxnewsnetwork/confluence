require 'spec_helper'

describe Confluence::Railties::Resolver do 
  context "resolving from gem" do
    let(:resolver) { Confluence::Railties::Resolver.instance  }
    let(:ctrl) { WelcomeController.append_view_path(resolver); WelcomeController.new }
    describe "#find_templates" do

      context "nil result" do
        it "should return with an empty array when given stuff it can't find" do
          resolver.find_templates("dog", "cat/rat/bird", false, {}).should be_empty
        end
        it "should return with an empty array when given stuff it can't find" do
          resolver.find_templates("dog", "cat/rat/bird", true, {}).should be_empty
        end
      end

      context "good results" do
        let(:templates) { resolver.find_templates("header_navigation", "header_navigation", true, {}) }
        it "should return the template that corresponds to the template in the header_navigation gem" do
          templates.should be_a Array
          templates.each { |template| template.should be_a ActionView::Template }
        end
      end

    end

    describe "#_get_gem_directory" do
      let(:get) { lambda { |parameter| resolver.send("_get_gem_directory", parameter) } }

      context "simple usage" do
        let(:path) { get.call("header_navigation") }
        it "should get me the path to the header_navigation gem on my machine if I use the prefix as header_navigation" do
          path.should eq File.join(Gem.loaded_specs["header_navigation"].full_gem_path, "assets", "html")
          path.should =~ /gem/
          path.should =~ /ruby/
          path.should be_a String
        end
      end

      context "expected usage" do
        let(:path) { get.call "header_navigation/cat/dog/fag/rat/123048/asdf/fajk" }

        it "should thoroughly ignore the rest of the crap after header_navigation since that is all it needs to find existing gems" do
          path.should eq File.join(Gem.loaded_specs["header_navigation"].full_gem_path, "assets", "html", "cat","dog","fag","rat","123048","asdf","fajk")
          path.should =~ /gem/
          path.should =~ /ruby/
          path.should be_a String
        end
      end

      context "dumbfuckery" do
        let(:path) { get.call "lolwtfasjkdflaskdjflaskjdf/ajsfk/asjdfkl/asdf" }
        it "should return nil if no such gem exists" do 
          path.should be_nil
        end

        it "should properly deal with nil paths" do
          get.call(nil).should be_nil
          get.call("").should be_nil
        end
      end
    end

    describe "#_get_partial_path" do
      let(:get) { lambda { |name, path| resolver.send("_get_partial_path", name, path) } }

      context "simple usage" do
        let(:path) { get.call "header_navigation",  resolver.send("_get_gem_directory", "header_navigation") }

        it "should produce the fully qualified path to the partial of interest" do
          File.exist?(path + ".html.haml").should be_true
          path.should be_a String
          path.should =~ /assets/
          path.should =~ /html/
        end
      end

      context "complex usage" do
        let(:path) { get.call "link",  resolver.send("_get_gem_directory", "header_navigation/header_navigation") }

        it "should produce the fully qualified path to partials that are embedded in folders that are several layers down" do
          File.exist?(path + ".html.haml").should be_true
          path.should be_a String
          path.should =~ /assets/
          path.should =~ /html/
        end
      end

      context "dumbfuckery" do
        let(:path) { get.call "link",  nil }
        it "should propagte the nil" do
          path.should be_nil
          get.call(nil, nil).should be_nil
          get.call(nil, "23").should be_nil
        end
      end
    end

    describe "#_get_handler_from_nothing" do
      let(:handler) { lambda { resolver.send("_get_handler_from_nothing") } }

      it "should return the haml handler since that's the only one I'm interested in supporting right now" do
        handler.call.should eq Haml::Plugin
      end
    end

    describe "#_get_source_from_path" do
      let(:get) { lambda { |path| resolver.send("_get_source_from_path", path) } }

      context "simple usage" do
        let(:source) { get.call resolver.send("_get_partial_path", "header_navigation", resolver.send("_get_gem_directory", "header_navigation") ) }

        it "should be a string" do
          source.should be_a String
          source.length.should > 25
          source.should =~ /\.header-navigation-box/
          source.should =~ /= render/
        end
      end

      context "complex usage" do
        let(:source) { get.call resolver.send("_get_partial_path", "link", resolver.send("_get_gem_directory", "header_navigation/header_navigation") ) }

        it "should be a string" do
          source.should be_a String
          source.length.should > 10
          source.should =~ /%li/
          source.should =~ /= link_to/
        end
      end

      context "dumbfuckery" do
        it "should return nil" do
          get.call(nil).should be_nil
        end
      end
    end

    describe "#_get_identifier" do
      let(:get) { lambda { |name, prefix| resolver.send("_get_identifier", name, prefix) } }
      let(:generator) { lambda { (1..rand(12)).to_a.map { ("a".."z").to_a.push(" ")[rand(27)] } } }
      it "should guarentee uniqueness if the given name and prefix are unique" do
        @container = {
          get.call("dog", "cat") => "dog-cat"
        }
        @temp = ["dog", "cat"]
        500.times do
          name = @temp.shift || generator.call
          prefix = @temp.shift || generator.call
          if @container[get.call(name, prefix)].nil?
            @container[get.call(name, prefix)] = "#{name}-#{prefix}"
          else
            @container[get.call(name, prefix)].should eq "#{name}-#{prefix}"
          end
        end
      end
    end
  end
end