require 'test_helper'

class Student2sControllerTest < ActionController::TestCase
  setup do
    @student2 = student2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student2" do
    assert_difference('Student2.count') do
      post :create, student2: { age: @student2.age, class1_id: @student2.class1_id, name: @student2.name }
    end

    assert_redirected_to student2_path(assigns(:student2))
  end

  test "should show student2" do
    get :show, id: @student2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student2
    assert_response :success
  end

  test "should update student2" do
    patch :update, id: @student2, student2: { age: @student2.age, class1_id: @student2.class1_id, name: @student2.name }
    assert_redirected_to student2_path(assigns(:student2))
  end

  test "should destroy student2" do
    assert_difference('Student2.count', -1) do
      delete :destroy, id: @student2
    end

    assert_redirected_to student2s_path
  end
end
