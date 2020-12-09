require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    test "should get index as admin" do
        sign_in users(:admin)
        get topics_path
        assert_response :success
        sign_out users(:admin)
    end

    test "should get index as user" do
        sign_in users(:user)
        get topics_path
        assert_response :success
        sign_out users(:user)
    end

    test "should get 401" do
        get topics_path
        assert_redirected_to new_user_session_path
    end
end
