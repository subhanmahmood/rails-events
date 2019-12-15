require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @task = tasks(:one)
    @event = events(:one)
    @user = users(:one)
  end

  test "should get new" do
    sign_in @user
    get new_task_url(event_id: @event)
    assert_response :success
end

  test "should create task" do
    sign_in @user
    assert_difference('Task.count') do
      post tasks_url, params: { task: { deadline: @task.deadline, description: @task.description, event_id: @task.event_id, status: @task.status, title: @task.title, user_id: @task.user_id } }
    end

    assert_redirected_to event_url(@event)
  end

  test "should get edit" do
    sign_in @user
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    sign_in @user
    patch task_url(@task), params: { task: { deadline: @task.deadline, description: @task.description, event_id: @task.event_id, status: @task.status, title: @task.title, user_id: @task.user_id } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    sign_in @user
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
