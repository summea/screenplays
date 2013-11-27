require 'test_helper'

class ScreenplaysControllerTest < ActionController::TestCase
  setup do
    @screenplay = screenplays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screenplays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screenplay" do
    assert_difference('Screenplay.count') do
      post :create, screenplay: { name: @screenplay.name }
    end

    assert_redirected_to screenplay_path(assigns(:screenplay))
  end

  test "should show screenplay" do
    get :show, id: @screenplay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screenplay
    assert_response :success
  end

  test "should update screenplay" do
    patch :update, id: @screenplay, screenplay: { name: @screenplay.name }
    assert_redirected_to screenplay_path(assigns(:screenplay))
  end

  test "should destroy screenplay" do
    assert_difference('Screenplay.count', -1) do
      delete :destroy, id: @screenplay
    end

    assert_redirected_to screenplays_path
  end
end
