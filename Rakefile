# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "confluence"
  gem.homepage = "http://github.com/foxnewsnetwork/confluence"
  gem.license = "MIT"
  gem.summary = %Q{A sloppy blobulization of jeweler with things like integration testing, javascript compiling, etc. that seeks to provide a framework for writing modular web assets}
  gem.description = %Q{One of the biggest problems facing any ruby (possibly rails) based web dev is the extreme lack of modularization of actual web components. Sure there are plenty of great modularized tools from rails to sprockets to whatever outthere that will help you get build a cool web app, but there is very little in terms of convention to help you build a cool web kit that can be reused anywhere else. Confluence is designed and used (by me) to build highly modular web assets like navigation bars, footers, map views, user profile tabs, etc. so that I never have to build the same again across different application.}
  gem.email = "foxnewsnetwork@gmail.com"
  gem.authors = ["Thomas Chen"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "confluence #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
