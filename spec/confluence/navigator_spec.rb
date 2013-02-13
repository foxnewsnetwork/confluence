require 'spec_helper'

describe Confluence::Navigator do

  describe Confluence::Navigator::Node do

    context "class method" do

      describe "#from_filepath" do
        let(:node) { Confluence::Navigator::Node.from_filepath RSpec.root }

        it "should give me a node" do
          node.should be_a Confluence::Navigator::Node
        end

        describe "#directory?" do
          specify { node.should be_directory }
        end

        describe "#expand_path" do
          it "should contain all the junk in the spec file path" do
            node.expand_path.map(&:filepath).sort.should eq ["confluence", "confluence_spec.rb", "spec_helper.rb", "support"].map { |entry| File.join(RSpec.root, entry)}
          end

        end

      end
    end
  end

  describe "api" do
    let(:nav) { Confluence::Navigator.new RSpec.root }

    describe "#on_encounter" do
      it "should complain if no block is give" do
        expect { nav.on_encounter }.to throw_symbol :NoBlockGivenError
      end

      it "should complain if a bad type is given" do 
        expect { nav.on_encounter(:dog) { } }.to throw_symbol :BadTypeError
      end

    end    
  end

  describe "usage" do
    let(:nav) { Confluence::Navigator.new RSpec.root }
    before :each do
      push_bfs = lambda { |a| (@bfs_results ||= []) << a }
      nav.on_encounter do |filepath|
        push_bfs.call filepath
      end
      nav.run
    end

    describe "#run" do
      it "a successful should spit out all the files in this very spec folder" do 
        @bfs_results.should_not be_empty
      end
      ["spec_helper.rb", "confluence_spec.rb"].each do |file|
        it "should at least contain the basic #{file} file" do
          @bfs_results.should include File.join(RSpec.root, file)
        end
      end
    end
  end

end