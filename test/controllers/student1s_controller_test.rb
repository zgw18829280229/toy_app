require 'test_helper'

class Student1sControllerTest < ActionController::TestCase
  setup do
    @student1 = student1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student1" do
    assert_difference('Student1.count') do
      post :create, student1: { class1_id: @student1.class1_id, name: @student1.name }
    end

    assert_redirected_to student1_path(assigns(:student1))
  end

  test "should show student1" do
    get :show, id: @student1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student1
    assert_response :success
  end

  test "should update student1" do
    patch :update, id: @student1, student1: { class1_id: @student1.class1_id, name: @student1.name }
    assert_redirected_to student1_path(assigns(:student1))
  end

  test "should destroy student1" do
    assert_difference('Student1.count', -1) do
      delete :destroy, id: @student1
    end

    assert_redirected_to student1s_path
  end
end
