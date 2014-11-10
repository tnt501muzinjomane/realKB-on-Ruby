require 'test_helper'

class SolutionsControllerTest < ActionController::TestCase
  setup do
    @solution = solutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solution" do
    assert_difference('Solution.count') do
      post :create, solution: { image1: @solution.image1, image2: @solution.image2, image3: @solution.image3, image4: @solution.image4, image5: @solution.image5, problem_id: @solution.problem_id, solution1: @solution.solution1, solution2: @solution.solution2, solution3: @solution.solution3, solution4: @solution.solution4, solution5: @solution.solution5, user_id: @solution.user_id }
    end

    assert_redirected_to solution_path(assigns(:solution))
  end

  test "should show solution" do
    get :show, id: @solution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solution
    assert_response :success
  end

  test "should update solution" do
    patch :update, id: @solution, solution: { image1: @solution.image1, image2: @solution.image2, image3: @solution.image3, image4: @solution.image4, image5: @solution.image5, problem_id: @solution.problem_id, solution1: @solution.solution1, solution2: @solution.solution2, solution3: @solution.solution3, solution4: @solution.solution4, solution5: @solution.solution5, user_id: @solution.user_id }
    assert_redirected_to solution_path(assigns(:solution))
  end

  test "should destroy solution" do
    assert_difference('Solution.count', -1) do
      delete :destroy, id: @solution
    end

    assert_redirected_to solutions_path
  end
end
