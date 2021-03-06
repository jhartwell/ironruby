require File.dirname(__FILE__) + '/../../spec_helper'
require 'rational'

describe :rational_to_r, :shared => true do
  conflicts_with :Prime do
    it "returns self" do
      a = Rational(3, 4)
      a.to_r.should equal(a)

      a = Rational(bignum_value, 4)
      a.to_r.should equal(a)
    end
  end
end
