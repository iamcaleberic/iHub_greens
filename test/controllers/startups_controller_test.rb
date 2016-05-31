require 'test_helper'

class StartupsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    @startup = startups(:one)
    sign_in Green.first
    sign_in Admin.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup" do
    assert_difference('Startup.count') do
      post :create, startup: { category: @startup.category, date_founded: @startup.date_founded, employees: @startup.employees, founders: @startup.founders, green_id: @startup.green_id, location: @startup.location, name: @startup.name }
    end

    assert_redirected_to startup_path(assigns(:startup))
  end

  test "should show startup" do
    get :show, id: @startup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup
    assert_response :success
  end

  test "should update startup" do
    patch :update, id: @startup, startup: { category: @startup.category, date_founded: @startup.date_founded, employees: @startup.employees, founders: @startup.founders, green_id: @startup.green_id, location: @startup.location, name: @startup.name }
    assert_redirected_to startup_path(assigns(:startup))
  end

  test "should destroy startup" do
    assert_difference('Startup.count', -1) do
      delete :destroy, id: @startup
    end

    assert_redirected_to startups_path
  end
end
