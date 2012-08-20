# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Wildthing::Application.initialize!

Time::DATE_FORMATS[:article] = "%A, %B %d, %Y"
