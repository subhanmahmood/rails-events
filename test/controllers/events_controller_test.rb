require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  #include Devise::TestHelpers
  include Devise::Test::IntegrationHelpers

  setup do
    @event = events(:one)
    @user = users(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get events_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    sign_in users(:one)
    assert_difference('Event.count') do
      post events_url, params: { event: { date: @event.date, description: @event.description, location: @event.location, title: @event.title, user_id: @event.user_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    sign_in users(:one)
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    sign_in users(:one)
    patch event_url(@event), params: { event: { date: @event.date, description: @event.description, location: @event.location, title: @event.title, user_id: @event.user_id } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    sign_in users(:one)
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
