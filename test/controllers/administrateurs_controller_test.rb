require 'test_helper'

class AdministrateursControllerTest < ActionController::TestCase
  setup do
    @administrateur = administrateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrateur" do
    assert_difference('Administrateur.count') do
      post :create, administrateur: { mail: @administrateur.mail, password: @administrateur.password, pseudo: @administrateur.pseudo }
    end

    assert_redirected_to administrateur_path(assigns(:administrateur))
  end

  test "should show administrateur" do
    get :show, id: @administrateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrateur
    assert_response :success
  end

  test "should update administrateur" do
    patch :update, id: @administrateur, administrateur: { mail: @administrateur.mail, password: @administrateur.password, pseudo: @administrateur.pseudo }
    assert_redirected_to administrateur_path(assigns(:administrateur))
  end

  test "should destroy administrateur" do
    assert_difference('Administrateur.count', -1) do
      delete :destroy, id: @administrateur
    end

    assert_redirected_to administrateurs_path
  end
end
