require "simplecov"
SimpleCov.start

require 'rspec'
Dir[File.expand_path("../lib/*.rb", File.dirname(__FILE__))].each { |source| require source }
Dir[File.join(File.dirname(__FILE__), "support", "**", "*.rb")].each { |help| require help }

RSpec.configure {|c| c.fail_fast = true}
RSpec.instance_exec do
  RSPEC_ROOT = File.expand_path(".", File.dirname(__FILE__))
  def self.root
    RSPEC_ROOT
  end
end

