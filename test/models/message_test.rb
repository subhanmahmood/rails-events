require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = users(:one)
    @event = events(:two)
  end

  test 'should not save empty message' do
    message = Message.new

    message.save
    refute message.valid?
  end

  test 'should save valid message' do
    message = Message.new(body: "sfgsfsdfsdf")
    message.user_id = @user.id
    message.event_id = @event.id
    message.save
    
    assert message.valid?
  end
end
