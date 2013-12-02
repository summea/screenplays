require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    sign_in User.first
    get :new
    assert_response :success
  end

  test "should create character" do
    sign_in User.first
    assert_difference('Character.count') do
      post :create, character: { alias: @character.alias, gender: @character.gender, name: @character.name }
    end
  end

  test "should show character" do
    sign_in User.first
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    sign_in User.first
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    sign_in User.first
    patch :update, id: @character, character: { alias: @character.alias, gender: @character.gender, name: @character.name }
  end

  test "should destroy character" do
    sign_in User.first
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
