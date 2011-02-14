require 'spec_helper'

describe RubygemsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should find a gem if it exists" do
      g = Factory.create :rubygem, name: 'gamename'
      get 'show', id: 'gemname'
      assigns(:gem).name.should == g.name
      assigns(:gem).id.should == g.id
    end

    it "should create the gem if it does not exist" do
      get 'show', id: 'gemname'
      assigns(:gem).name.should == 'gemname'
      assigns(:gem).id.should_not be_nil
    end
  end

end
