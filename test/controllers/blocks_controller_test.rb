require 'test_helper'

class BlocksControllerTest < ActionController::TestCase
  setup do
    @block = blocks(:one)
  end

  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:blocks)
  end

  test "should get new" do
    sign_in User.first
    get :new
    assert_response :success
  end

  test "should create block" do
    sign_in User.first
    assert_difference('Block.count') do
      post :create, block: {  }
    end

    assert_redirected_to block_path(assigns(:block))
  end

  test "should show block" do
    sign_in User.first
    get :show, id: @block
    assert_response :success
  end

  test "should get edit" do
    sign_in User.first
    get :edit, id: @block
    assert_response :success
  end

  test "should update block" do
    sign_in User.first
    patch :update, id: @block, block: {  }
    assert_redirected_to block_path(assigns(:block))
  end

  test "should destroy block" do
    sign_in User.first
    @request.env['HTTP_REFERER'] = '/blocks'
    assert_difference('Block.count', -1) do
      delete :destroy, id: @block
    end

    assert_redirected_to blocks_path
  end
end
