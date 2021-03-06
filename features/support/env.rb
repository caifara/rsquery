gem "selenium-client", ">=1.2.14"

require "selenium/client"

require File.expand_path(File.dirname(__FILE__) + '/../../lib/rSquery.rb')

$browser = Selenium::Client::Driver.new(
          :host => "localhost",
          :port => 4444,
          :browser => "*firefox",
          :url => "http://localhost:3002",
          :timeout_in_second => 60 )
$browser.start_new_browser_session

def selenium
  $browser
end
 
Before do
  selenium.open("/index.html")
end
 
After do
end