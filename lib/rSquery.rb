require "rubygems"
require "spec"
require "selenium/client"

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__))) unless $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))

require "rSquery/selenium_hacks"
require "rSquery/rspec_matchers"
require "rSquery/jquery"