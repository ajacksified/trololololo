require 'test_helper'

class TrollsControllerTest < ActionController::TestCase
  setup do
    @troll = trolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troll" do
    assert_difference('Troll.count') do
      post :create, troll: { bio: @troll.bio, name: @troll.name }
    end

    assert_redirected_to troll_path(assigns(:troll))
  end

  test "should show troll" do
    get :show, id: @troll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troll
    assert_response :success
  end

  test "should update troll" do
    patch :update, id: @troll, troll: { bio: @troll.bio, name: @troll.name }
    assert_redirected_to troll_path(assigns(:troll))
  end

  test "should destroy troll" do
    assert_difference('Troll.count', -1) do
      delete :destroy, id: @troll
    end

    assert_redirected_to trolls_path
  end
end
