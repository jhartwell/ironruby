require File.dirname(__FILE__) + '/../../spec_helper'
require 'pathname'

describe "Pathname#==" do

  it "returns true when identical paths are used" do
    (Pathname.new('') == Pathname.new('')).should == true
  end

  it "returns true when identical paths are used" do
    (Pathname.new('') == Pathname.new('/usr/local/bin')).should == false
  end

end

