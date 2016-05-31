require 'test_helper'

class ChallengesControllerTest < ActionController::TestCase
  
  include Devise::TestHelpers
  setup do
    @challenge = challenges(:one)
    sign_in Green.first
    sign_in Admin.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:challenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create challenge" do
    assert_difference('Challenge.count') do
      post :create, challenge: { description: @challenge.description, organization: @challenge.organization, reward: @challenge.reward, timeline: @challenge.timeline, title: @challenge.title }
    end

    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should show challenge" do
    get :show, id: @challenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @challenge
    assert_response :success
  end

  test "should update challenge" do
    patch :update, id: @challenge, challenge: { description: @challenge.description, organization: @challenge.organization, reward: @challenge.reward, timeline: @challenge.timeline, title: @challenge.title }
    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should destroy challenge" do
    assert_difference('Challenge.count', -1) do
      delete :destroy, id: @challenge
    end

    assert_redirected_to challenges_path
  end
end
