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
  gem.description = %Q{confluence is the merging of rivers. In particular, it is the merging of the fay-haskell-coffee-js river with the scss-css river with the psd-png river into the rails-ruby-haml rivers}
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
