require 'test_helper'

class RoisControllerTest < ActionController::TestCase
  setup do
    @roi = rois(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roi" do
    assert_difference('Roi.count') do
      post :create, roi: { roi_name: @roi.roi_name, roi_no: @roi.roi_no }
    end

    assert_redirected_to roi_path(assigns(:roi))
  end

  test "should show roi" do
    get :show, id: @roi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roi
    assert_response :success
  end

  test "should update roi" do
    patch :update, id: @roi, roi: { roi_name: @roi.roi_name, roi_no: @roi.roi_no }
    assert_redirected_to roi_path(assigns(:roi))
  end

  test "should destroy roi" do
    assert_difference('Roi.count', -1) do
      delete :destroy, id: @roi
    end

    assert_redirected_to rois_path
  end
end
