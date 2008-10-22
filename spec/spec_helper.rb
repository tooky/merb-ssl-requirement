$:.push File.join(File.dirname(__FILE__), '..', 'lib')
 
require "rubygems"
require "merb-core"
require "merb-ssl-requirement"
require File.dirname(__FILE__) / "controllers" / "ssl-requirement"
require "spec"
 
Merb.start :environment => 'test'
 
Spec::Runner.configure do |config|
  config.include Merb::Test::RequestHelper
end