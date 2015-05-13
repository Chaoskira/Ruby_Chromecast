require 'test_helper'

class ThrailerControllerTest < ActionController::TestCase
  test "should get jouer" do
    get :jouer
    assert_response :success
  end

  test "should get suggestion" do
    get :suggestion
    assert_response :success
  end

end
