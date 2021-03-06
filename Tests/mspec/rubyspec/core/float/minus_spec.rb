require File.dirname(__FILE__) + '/../../spec_helper'

describe "Float#-" do
  it "returns self minus other" do
    (9_237_212.5280 - 5_280).should be_close(9231932.528, TOLERANCE)
    (2_560_496.1691 - bignum_value).should be_close(-9223372036852215808.000, TOLERANCE)
    (5.5 - 5.5).should be_close(0.0,TOLERANCE)
  end

  it "allows large operands without error" do
    lambda {1.0 - 2**50000}.should_not raise_error
  end
end
