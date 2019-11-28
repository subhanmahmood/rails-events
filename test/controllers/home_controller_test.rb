require 'test_helper'
class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get home" do
    sign_in users(:one)
    get '/'
    assert_response :success
  end

  test "should get contact" do
    sign_in users(:one)
    get '/contact'
    assert_response :success
  end

end
