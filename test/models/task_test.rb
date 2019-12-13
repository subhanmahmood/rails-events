require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @event = events(:one)
  end

  test 'should not save empty task' do
    task = Task.new

    task.save
    refute task.valid?
  end

  test 'should save valid task' do
    task = Task.new

    task.title = 'My Task'
    task.deadline = "2019-12-11 17:25:00"
    task.event_id = @event

    task.save
    assert task.valid?
  end
end
