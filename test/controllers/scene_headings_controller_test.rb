require 'test_helper'

class SceneHeadingsControllerTest < ActionController::TestCase
  setup do
    @scene_heading = scene_headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scene_headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scene_heading" do
    assert_difference('SceneHeading.count') do
      post :create, scene_heading: { location: @scene_heading.location, time: @scene_heading.time }
    end

    assert_redirected_to scene_heading_path(assigns(:scene_heading))
  end

  test "should show scene_heading" do
    get :show, id: @scene_heading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scene_heading
    assert_response :success
  end

  test "should update scene_heading" do
    patch :update, id: @scene_heading, scene_heading: { location: @scene_heading.location, time: @scene_heading.time }
    assert_redirected_to scene_heading_path(assigns(:scene_heading))
  end

  test "should destroy scene_heading" do
    assert_difference('SceneHeading.count', -1) do
      delete :destroy, id: @scene_heading
    end

    assert_redirected_to scene_headings_path
  end
end
