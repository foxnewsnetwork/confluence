require "rubygems"
require "thor"
Dir[File.join(File.dirname(__FILE__), "confluence", "*.rb")].each { |source| require source }

module Confluence
  class Application < Thor
    include Thor::Actions

    attr_accessor :project_name, :project_author

    desc "new", "Creates a new confluence assets project for you in your specified directory"
    def new(project_name)
      @project_name = project_name
      @project_author = "Me"
      source_path = File.join File.dirname(__FILE__), "confluence", "templates"
      destination_path = project_name
      directory( source_path, destination_path )
    end

    def self.source_root
      File.join File.dirname(__FILE__), "confluence", "templates"
    end

  end
end