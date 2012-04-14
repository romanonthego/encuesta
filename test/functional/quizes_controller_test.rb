require 'test_helper'

class QuizesControllerTest < ActionController::TestCase
  setup do
    @quize = quizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quize" do
    assert_difference('Quize.count') do
      post :create, quize: {  }
    end

    assert_redirected_to quize_path(assigns(:quize))
  end

  test "should show quize" do
    get :show, id: @quize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quize
    assert_response :success
  end

  test "should update quize" do
    put :update, id: @quize, quize: {  }
    assert_redirected_to quize_path(assigns(:quize))
  end

  test "should destroy quize" do
    assert_difference('Quize.count', -1) do
      delete :destroy, id: @quize
    end

    assert_redirected_to quizes_path
  end
end
