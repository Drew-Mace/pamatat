require 'test_helper'

module Pamatat
  class TasksControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @task = pamatat_tasks(:one)
    end

    test "should get index" do
      get tasks_url
      assert_response :success
    end

    test "should get new" do
      get new_task_url
      assert_response :success
    end

    test "should create task" do
      assert_difference('Task.count') do
        post tasks_url, params: { task: { complete: @task.complete, date: @task.date, important: @task.important, task: @task.task } }
      end

      assert_redirected_to task_url(Task.last)
    end

    test "should show task" do
      get task_url(@task)
      assert_response :success
    end

    test "should get edit" do
      get edit_task_url(@task)
      assert_response :success
    end

    test "should update task" do
      patch task_url(@task), params: { task: { complete: @task.complete, date: @task.date, important: @task.important, task: @task.task } }
      assert_redirected_to task_url(@task)
    end

    test "should destroy task" do
      assert_difference('Task.count', -1) do
        delete task_url(@task)
      end

      assert_redirected_to tasks_url
    end
  end
end
