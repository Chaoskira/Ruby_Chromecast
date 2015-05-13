require 'test_helper'

class FilmVuesControllerTest < ActionController::TestCase
  setup do
    @film_vue = film_vues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:film_vues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film_vue" do
    assert_difference('FilmVue.count') do
      post :create, film_vue: { id_film: @film_vue.id_film, id_utilisateur: @film_vue.id_utilisateur }
    end

    assert_redirected_to film_vue_path(assigns(:film_vue))
  end

  test "should show film_vue" do
    get :show, id: @film_vue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film_vue
    assert_response :success
  end

  test "should update film_vue" do
    patch :update, id: @film_vue, film_vue: { id_film: @film_vue.id_film, id_utilisateur: @film_vue.id_utilisateur }
    assert_redirected_to film_vue_path(assigns(:film_vue))
  end

  test "should destroy film_vue" do
    assert_difference('FilmVue.count', -1) do
      delete :destroy, id: @film_vue
    end

    assert_redirected_to film_vues_path
  end
end
