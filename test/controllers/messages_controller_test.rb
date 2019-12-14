require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @event = events(:one)
    @message = messages(:one)
    sign_in users(:one)
  end
  test "should create message" do
    assert_difference('Message.count') do
      post messages_url, params: { message: { body: @message.body, event_id: @message.event_id, user_id: @message.user_id } }
    end

    assert_redirected_to message_url(Message.last)
  end

  test "should update message" do
    patch message_url(@message), params: { message: { body: @message.body, event_id: @message.event_id, user_id: @message.user_id } }
    assert_redirected_to message_url(@message)
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete message_url(@message)
    end

    assert_redirected_to messages_url
  end
end
