# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Integration::Application.initialize!

# Loading up decent and haml
require 'decent_exposure'
require 'haml'
