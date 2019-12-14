require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
  end


  test 'should not save empty event' do
    event = Event.new

    event.save
    refute event.valid?
  end

  test 'should save valid event' do
    event = Event.new(title: "test", location: "ssomwjrg", date: "2019-12-13", description: "sdfsdfsdfsdf")
    event.user_id = @user.id
    event.save
    
    assert event.valid?
  end

end
