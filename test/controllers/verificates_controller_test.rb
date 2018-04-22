require 'test_helper'

class VerificatesControllerTest < ActionController::TestCase
  setup do
    @verificate = verificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verificate" do
    assert_difference('Verificate.count') do
      post :create, verificate: {  }
    end

    assert_redirected_to verificate_path(assigns(:verificate))
  end

  test "should show verificate" do
    get :show, id: @verificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verificate
    assert_response :success
  end

  test "should update verificate" do
    patch :update, id: @verificate, verificate: {  }
    assert_redirected_to verificate_path(assigns(:verificate))
  end

  test "should destroy verificate" do
    assert_difference('Verificate.count', -1) do
      delete :destroy, id: @verificate
    end

    assert_redirected_to verificates_path
  end
end
