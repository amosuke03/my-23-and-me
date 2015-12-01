require 'test_helper'

class My23andmesControllerTest < ActionController::TestCase
  setup do
    @my23andme = my23andmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my23andmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my23andme" do
    assert_difference('My23andme.count') do
      post :create, my23andme: { disease: @my23andme.disease, gideline: @my23andme.gideline, mechanizem: @my23andme.mechanizem, pharmacotherapy: @my23andme.pharmacotherapy }
    end

    assert_redirected_to my23andme_path(assigns(:my23andme))
  end

  test "should show my23andme" do
    get :show, id: @my23andme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my23andme
    assert_response :success
  end

  test "should update my23andme" do
    patch :update, id: @my23andme, my23andme: { disease: @my23andme.disease, gideline: @my23andme.gideline, mechanizem: @my23andme.mechanizem, pharmacotherapy: @my23andme.pharmacotherapy }
    assert_redirected_to my23andme_path(assigns(:my23andme))
  end

  test "should destroy my23andme" do
    assert_difference('My23andme.count', -1) do
      delete :destroy, id: @my23andme
    end

    assert_redirected_to my23andmes_path
  end
end
