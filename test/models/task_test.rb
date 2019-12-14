require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = users(:one)
    @event = events(:two)
  end

  test 'should not save empty task' do
    task = Task.new

    task.save
    refute task.valid?
  end

  test 'should save valid task' do
    task = Task.new(title: "Ttile", deadline: "2019-12-23", description: "sfasfsfdf", status: false)
    task.user_id = @user.id
    task.event_id = @event.id
    task.save
    
    assert task.valid?
  end
end
