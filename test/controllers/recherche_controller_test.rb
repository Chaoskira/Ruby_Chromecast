require 'test_helper'

class RechercheControllerTest < ActionController::TestCase
  test "should get rechercher" do
    get :rechercher
    assert_response :success
  end

  test "should get afficher" do
    get :afficher
    assert_response :success
  end

end
