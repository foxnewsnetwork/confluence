# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "confluence"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Chen"]
  s.date = "2013-02-14"
  s.description = "confluence is the merging of rivers. In particular, it is the merging of the fay-haskell-coffee-js river with the scss-css river with the psd-png river into the rails-ruby-haml rivers"
  s.email = "foxnewsnetwork@gmail.com"
  s.executables = ["confluence"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/confluence",
    "lib/confluence.rb",
    "lib/confluence/navigator.rb",
    "lib/confluence/templates/%project_name%.cabal.tt",
    "lib/confluence/templates/.document",
    "lib/confluence/templates/.gitignore",
    "lib/confluence/templates/.rspec",
    "lib/confluence/templates/Gemfile.tt",
    "lib/confluence/templates/LICENSE.txt.tt",
    "lib/confluence/templates/Makefile.tt",
    "lib/confluence/templates/README.markdown.tt",
    "lib/confluence/templates/Rakefile.tt",
    "lib/confluence/templates/Setup.hs.tt",
    "lib/confluence/templates/TODO.markdown.tt",
    "lib/confluence/templates/assets/html/_%project_name%.html.haml.tt",
    "lib/confluence/templates/assets/images/README.markdown.tt",
    "lib/confluence/templates/assets/javascripts/README.markdown.tt",
    "lib/confluence/templates/assets/stylesheets/README.markdown.tt",
    "lib/confluence/templates/lib/%project_name%.rb.tt",
    "lib/confluence/templates/package.json.tt",
    "lib/confluence/templates/spec/%project_name%_spec.rb.tt",
    "lib/confluence/templates/spec/spec_helper.rb.tt",
    "lib/confluence/templates/src/images/README.markdown.tt",
    "lib/confluence/templates/src/javascripts/%project_name%.hs.tt",
    "lib/confluence/templates/src/stylesheets/%project_name%.scss.tt",
    "lib/confluence/templates/test/integration/.gitignore",
    "lib/confluence/templates/test/integration/Gemfile",
    "lib/confluence/templates/test/integration/Gemfile.lock",
    "lib/confluence/templates/test/integration/README.rdoc",
    "lib/confluence/templates/test/integration/Rakefile",
    "lib/confluence/templates/test/integration/app/assets/images/rails.png",
    "lib/confluence/templates/test/integration/app/assets/javascripts/application.js",
    "lib/confluence/templates/test/integration/app/assets/javascripts/pages.js",
    "lib/confluence/templates/test/integration/app/assets/stylesheets/application.css",
    "lib/confluence/templates/test/integration/app/assets/stylesheets/pages.css",
    "lib/confluence/templates/test/integration/app/controllers/application_controller.rb",
    "lib/confluence/templates/test/integration/app/controllers/pages_controller.rb",
    "lib/confluence/templates/test/integration/app/helpers/application_helper.rb",
    "lib/confluence/templates/test/integration/app/helpers/pages_helper.rb",
    "lib/confluence/templates/test/integration/app/mailers/.gitkeep",
    "lib/confluence/templates/test/integration/app/models/.gitkeep",
    "lib/confluence/templates/test/integration/app/views/layouts/application.html.erb",
    "lib/confluence/templates/test/integration/app/views/pages/index.html.haml",
    "lib/confluence/templates/test/integration/config.ru",
    "lib/confluence/templates/test/integration/config/application.rb",
    "lib/confluence/templates/test/integration/config/boot.rb",
    "lib/confluence/templates/test/integration/config/environment.rb",
    "lib/confluence/templates/test/integration/config/environments/development.rb",
    "lib/confluence/templates/test/integration/config/environments/production.rb",
    "lib/confluence/templates/test/integration/config/environments/test.rb",
    "lib/confluence/templates/test/integration/config/initializers/backtrace_silencers.rb",
    "lib/confluence/templates/test/integration/config/initializers/inflections.rb",
    "lib/confluence/templates/test/integration/config/initializers/mime_types.rb",
    "lib/confluence/templates/test/integration/config/initializers/secret_token.rb",
    "lib/confluence/templates/test/integration/config/initializers/session_store.rb",
    "lib/confluence/templates/test/integration/config/initializers/wrap_parameters.rb",
    "lib/confluence/templates/test/integration/config/locales/en.yml",
    "lib/confluence/templates/test/integration/config/routes.rb",
    "lib/confluence/templates/test/integration/db/seeds.rb",
    "lib/confluence/templates/test/integration/lib/assets/.gitkeep",
    "lib/confluence/templates/test/integration/lib/tasks/.gitkeep",
    "lib/confluence/templates/test/integration/public/404.html",
    "lib/confluence/templates/test/integration/public/422.html",
    "lib/confluence/templates/test/integration/public/500.html",
    "lib/confluence/templates/test/integration/public/favicon.ico",
    "lib/confluence/templates/test/integration/public/robots.txt",
    "lib/confluence/templates/test/integration/script/rails",
    "lib/confluence/templates/test/integration/vendor/assets/javascripts/.gitkeep",
    "lib/confluence/templates/test/integration/vendor/assets/stylesheets/.gitkeep",
    "lib/confluence/templates/test/integration/vendor/plugins/.gitkeep",
    "lib/confluence/templates/test/javascripts/README.markdown.tt",
    "spec/confluence/navigator_spec.rb",
    "spec/confluence_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/file_sytem/navigator.rb"
  ]
  s.homepage = "http://github.com/foxnewsnetwork/confluence"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A sloppy blobulization of jeweler with things like integration testing, javascript compiling, etc. that seeks to provide a framework for writing modular web assets"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<rdoc>, [">= 0"])
      s.add_runtime_dependency(%q<simplecov>, [">= 0"])
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end
