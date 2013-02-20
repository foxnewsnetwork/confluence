# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "confluence"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Chen"]
  s.date = "2013-02-20"
  s.description = "One of the biggest problems facing any ruby (possibly rails) based web dev is the extreme lack of modularization of actual web components. Sure there are plenty of great modularized tools from rails to sprockets to whatever outthere that will help you get build a cool web app, but there is very little in terms of convention to help you build a cool web kit that can be reused anywhere else. Confluence is designed and used (by me) to build highly modular web assets like navigation bars, footers, map views, user profile tabs, etc. so that I never have to build the same again across different application."
  s.email = "foxnewsnetwork@gmail.com"
  s.executables = ["confluence"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "bin/confluence",
    "confluence.gemspec",
    "lib/confluence.rb",
    "lib/confluence/railtie.rb",
    "lib/confluence/railties/resolver.rb",
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
    "lib/confluence/templates/assets/javascripts/application.js",
    "lib/confluence/templates/assets/stylesheets/README.markdown.tt",
    "lib/confluence/templates/assets/stylesheets/application.css",
    "lib/confluence/templates/component.json.tt",
    "lib/confluence/templates/config.ru",
    "lib/confluence/templates/lib/%project_name%.rb.tt",
    "lib/confluence/templates/lib/%project_name%/presenter.rb.tt",
    "lib/confluence/templates/package.json.tt",
    "lib/confluence/templates/spec/%project_name%_spec.rb.tt",
    "lib/confluence/templates/spec/spec_helper.rb.tt",
    "lib/confluence/templates/src/images/README.markdown.tt",
    "lib/confluence/templates/test/integration/.gitignore",
    "lib/confluence/templates/test/integration/README.rdoc",
    "lib/confluence/templates/test/integration/Rakefile",
    "lib/confluence/templates/test/integration/app/controllers/application_controller.rb",
    "lib/confluence/templates/test/integration/app/controllers/html_controller.rb.tt",
    "lib/confluence/templates/test/integration/app/views/html/index.html.haml.tt",
    "lib/confluence/templates/test/integration/app/views/layouts/application.html.erb",
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
    "lib/confluence/templates/test/integration/config/routes.rb.tt",
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
    "spec/confluence/railtie_spec.rb",
    "spec/confluence/railties/resolver_spec.rb",
    "spec/confluence/welcome_controller_spec.rb",
    "spec/confluence_spec.rb",
    "spec/fixture/.gitignore",
    "spec/fixture/README.rdoc",
    "spec/fixture/Rakefile",
    "spec/fixture/app/assets/images/rails.png",
    "spec/fixture/app/assets/javascripts/application.js",
    "spec/fixture/app/assets/stylesheets/application.css",
    "spec/fixture/app/controllers/application_controller.rb",
    "spec/fixture/app/controllers/welcome_controller.rb",
    "spec/fixture/app/views/layouts/application.html.erb",
    "spec/fixture/app/views/welcome/index.html.haml",
    "spec/fixture/config.ru",
    "spec/fixture/config/application.rb",
    "spec/fixture/config/boot.rb",
    "spec/fixture/config/environment.rb",
    "spec/fixture/config/environments/development.rb",
    "spec/fixture/config/environments/production.rb",
    "spec/fixture/config/environments/test.rb",
    "spec/fixture/config/initializers/backtrace_silencers.rb",
    "spec/fixture/config/initializers/inflections.rb",
    "spec/fixture/config/initializers/mime_types.rb",
    "spec/fixture/config/initializers/secret_token.rb",
    "spec/fixture/config/initializers/session_store.rb",
    "spec/fixture/config/initializers/wrap_parameters.rb",
    "spec/fixture/config/locales/en.yml",
    "spec/fixture/config/routes.rb",
    "spec/fixture/lib/assets/.gitkeep",
    "spec/fixture/lib/tasks/.gitkeep",
    "spec/fixture/log/.gitkeep",
    "spec/fixture/public/404.html",
    "spec/fixture/public/422.html",
    "spec/fixture/public/500.html",
    "spec/fixture/public/favicon.ico",
    "spec/fixture/public/index.html",
    "spec/fixture/public/robots.txt",
    "spec/fixture/script/rails",
    "spec/fixture/vendor/assets/javascripts/.gitkeep",
    "spec/fixture/vendor/assets/stylesheets/.gitkeep",
    "spec/fixture/vendor/plugins/.gitkeep",
    "spec/spec_helper.rb"
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
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<git>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<header_navigation>, ["~> 0.0.1"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<header_navigation>, ["~> 0.0.1"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<header_navigation>, ["~> 0.0.1"])
  end
end

