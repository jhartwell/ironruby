require File.dirname(__FILE__) + '/../../spec_helper'

describe "Fixnum#to_f" do
  it "returns self converted to a Float" do
    0.to_f.should == 0.0
    -500.to_f.should == -500.0
    9_641_278.to_f.should == 9641278.0
  end
end
