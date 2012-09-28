require 'test_helper'

class AaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Aa.new.valid?
  end
end
