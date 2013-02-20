require "rubygems"
require "thor"
require "git"
require "active_support/core_ext/string"
require File.join(File.dirname(__FILE__), "confluence", "railtie") if defined?(Rails)

module Confluence
  class Application < Thor
    include Thor::Actions

    attr_accessor :project_name, :project_author, :project_email, :project_github_user

    desc "new", "Creates a new confluence assets project for you in your specified directory"
    def new(project_name)
      @project_name = project_name
      @project_author = Git.global_config["user.name"]
      @project_email = Git.global_config["user.email"]
      @project_github_user = Git.global_config["github.email"]
      source_path = File.join File.dirname(__FILE__), "confluence", "templates"
      destination_path = project_name
      directory( source_path, destination_path )
    end

    def self.source_root
      File.join File.dirname(__FILE__), "confluence", "templates"
    end

  end
end