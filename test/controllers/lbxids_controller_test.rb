require 'test_helper'

class LbxidsControllerTest < ActionController::TestCase
  setup do
    @lbxid = lbxids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lbxids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lbxid" do
    assert_difference('Lbxid.count') do
      post :create, lbxid: { lbxids: @lbxid.lbxids }
    end

    assert_redirected_to lbxid_path(assigns(:lbxid))
  end

  test "should show lbxid" do
    get :show, id: @lbxid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lbxid
    assert_response :success
  end

  test "should update lbxid" do
    patch :update, id: @lbxid, lbxid: { lbxids: @lbxid.lbxids }
    assert_redirected_to lbxid_path(assigns(:lbxid))
  end

  test "should destroy lbxid" do
    assert_difference('Lbxid.count', -1) do
      delete :destroy, id: @lbxid
    end

    assert_redirected_to lbxids_path
  end
end
