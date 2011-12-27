require 'spec_helper'

describe Page do
  
  it "should have a unique name" do
    create(:page, name: "unique")
    Page.new(name: "unique").should_not be_valid
  end
  
  it "should have unique permalink" do
    create(:page, permalink: "unique")
    Page.new(permalink: "unique").should_not be_valid 
  end
  
  it "should have a name" do
    Page.new(name: nil).should have(1).error_on(:name)  
  end 
    
  it "should have a permalink" do
    Page.new(permalink: nil).should have(1).error_on(:permalink) 
  end 

end
