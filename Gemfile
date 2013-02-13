source "http://rubygems.org"
source "http://gems.github.com"
# Add dependencies required to use your gem here.
# Example:
#   gem "activesupport", ">= 2.3.5"
gem "rake"
gem "bundler"
gem "rdoc"
gem "simplecov"
gem "rspec"
gem "thor"

# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development do
  gem "jeweler", "~> 1.8.4"
end

group :debug do
  gem (RUBY_VERSION =~ /^1\.9/ ? "ruby-debug19" : "ruby-debug")
end

group :xzibit do
  # stole this page from jeweler's gemspec
  # who apparently stole from bundler's gemspec
  # adds confluence to this directory for the same reason
  # that jeweler does it
  # gem 'confluence', :path => '.'
end
