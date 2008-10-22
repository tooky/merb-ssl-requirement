require File.dirname(__FILE__) + '/spec_helper'

describe "SslRequirement" do
  
  it "should not accidently introduce any methods as controller actions" do
    Merb::Controller.callable_actions.should be_empty
  end
  
end

describe "ssl_allowed" do
  it "should allow http connection to allowed action" do
    dispatch_to(Secure, :c, {}, 'HTTPS' => nil).body.should == "c"
  end
  
  it "should allow https connection to allowed action" do
    dispatch_to(Secure, :c, {}, 'HTTPS' => 'on').body.should == "c" 
  end
end

describe "ssl_required" do
  it "should redirect http to https for required actions" do
    controller = dispatch_to(Secure, :a, {}, 'HTTPS' => nil)
    controller.should redirect
    controller.headers['Location'].should match(%r{^https://})
  end
  
  it "should allow https connection to required actions" do
    dispatch_to(Secure, :a, {}, 'HTTPS' => 'on').body.should == "a"
  end
end

describe "non-ssl actions" do
  it "should allow http connection" do
    dispatch_to(Secure, :d, {}, 'HTTPS' => nil).body.should == "d"
  end
  
  it "should redirect https connection to http" do
    controller = dispatch_to(Secure, :d, {}, 'HTTPS' => 'on')
    controller.should redirect
    controller.headers['Location'].should match(%r{^http://})
  end
end