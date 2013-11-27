require 'test_helper'

class ActionBlocksControllerTest < ActionController::TestCase
  setup do
    @action_block = action_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_block" do
    assert_difference('ActionBlock.count') do
      post :create, action_block: { scene_description: @action_block.scene_description }
    end

    assert_redirected_to action_block_path(assigns(:action_block))
  end

  test "should show action_block" do
    get :show, id: @action_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_block
    assert_response :success
  end

  test "should update action_block" do
    patch :update, id: @action_block, action_block: { scene_description: @action_block.scene_description }
    assert_redirected_to action_block_path(assigns(:action_block))
  end

  test "should destroy action_block" do
    assert_difference('ActionBlock.count', -1) do
      delete :destroy, id: @action_block
    end

    assert_redirected_to action_blocks_path
  end
end
