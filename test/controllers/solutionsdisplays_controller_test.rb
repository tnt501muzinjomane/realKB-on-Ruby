require 'test_helper'

class SolutionsdisplaysControllerTest < ActionController::TestCase
  setup do
    @solutionsdisplay = solutionsdisplays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solutionsdisplays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solutionsdisplay" do
    assert_difference('Solutionsdisplay.count') do
      post :create, solutionsdisplay: { name: @solutionsdisplay.name }
    end

    assert_redirected_to solutionsdisplay_path(assigns(:solutionsdisplay))
  end

  test "should show solutionsdisplay" do
    get :show, id: @solutionsdisplay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solutionsdisplay
    assert_response :success
  end

  test "should update solutionsdisplay" do
    patch :update, id: @solutionsdisplay, solutionsdisplay: { name: @solutionsdisplay.name }
    assert_redirected_to solutionsdisplay_path(assigns(:solutionsdisplay))
  end

  test "should destroy solutionsdisplay" do
    assert_difference('Solutionsdisplay.count', -1) do
      delete :destroy, id: @solutionsdisplay
    end

    assert_redirected_to solutionsdisplays_path
  end
end
