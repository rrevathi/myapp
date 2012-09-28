require 'test_helper'

class AasControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => Aa.first
    assert_template 'show'
  end
end
