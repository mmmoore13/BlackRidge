require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'sale'" do
    it "returns http success" do
      get 'sale'
      response.should be_success
    end
  end

  describe "GET 'programs'" do
    it "returns http success" do
      get 'programs'
      response.should be_success
    end
  end

end
