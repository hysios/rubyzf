require 'test_helper'

class BlogorsControllerTest < ActionController::TestCase
  setup do
    @blogor = blogors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blogor" do
    assert_difference('Blogor.count') do
      post :create, blogor: { content: @blogor.content, name: @blogor.name }
    end

    assert_redirected_to blogor_path(assigns(:blogor))
  end

  test "should show blogor" do
    get :show, id: @blogor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blogor
    assert_response :success
  end

  test "should update blogor" do
    put :update, id: @blogor, blogor: { content: @blogor.content, name: @blogor.name }
    assert_redirected_to blogor_path(assigns(:blogor))
  end

  test "should destroy blogor" do
    assert_difference('Blogor.count', -1) do
      delete :destroy, id: @blogor
    end

    assert_redirected_to blogors_path
  end
end
