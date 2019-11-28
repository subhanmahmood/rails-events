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
    task.event = @event

    task.save
    assert task.valid?
  end
end
