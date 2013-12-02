require 'test_helper'

class BlockTypesControllerTest < ActionController::TestCase
  setup do
    @block_type = block_types(:one)
  end

  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:block_types)
  end

  test "should get new" do
    sign_in User.first
    get :new
    assert_response :success
  end

  test "should create block_type" do
    sign_in User.first
    assert_difference('BlockType.count') do
      post :create, block_type: { name: @block_type.name }
    end

    assert_redirected_to block_type_path(assigns(:block_type))
  end

  test "should show block_type" do
    sign_in User.first
    get :show, id: @block_type
    assert_response :success
  end

  test "should get edit" do
    sign_in User.first
    get :edit, id: @block_type
    assert_response :success
  end

  test "should update block_type" do
    sign_in User.first
    patch :update, id: @block_type, block_type: { name: @block_type.name }
    assert_redirected_to block_type_path(assigns(:block_type))
  end

  test "should destroy block_type" do
    sign_in User.first
    assert_difference('BlockType.count', -1) do
      delete :destroy, id: @block_type
    end

    assert_redirected_to block_types_path
  end
end
