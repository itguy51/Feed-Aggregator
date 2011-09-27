# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application



Mime::Type.register "application/octet-stream", :pdf

Feeder::Application.initialize!
