require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  include Devise::TestHelpers
 

  test "should get privacy_terms" do
    get :privacy_terms
    assert_response :success
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
  end

end
