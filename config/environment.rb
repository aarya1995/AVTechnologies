# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
AvDesign::Application.initialize!

# should store these credentials in environment variables on the server
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}