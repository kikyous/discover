require 'test_helper'

module Discover
  class TopicsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @topic = discover_topics(:one)
    end

    test "should get index" do
      get topics_url
      assert_response :success
    end

    test "should get new" do
      get new_topic_url
      assert_response :success
    end

    test "should create topic" do
      assert_difference('Topic.count') do
        post topics_url, params: { topic: { content: @topic.content, node_id: @topic.node_id, openid: @topic.openid, replies_count: @topic.replies_count, title: @topic.title, user_id: @topic.user_id } }
      end

      assert_redirected_to topic_path(Topic.last)
    end

    test "should show topic" do
      get topic_url(@topic)
      assert_response :success
    end

    test "should get edit" do
      get edit_topic_url(@topic)
      assert_response :success
    end

    test "should update topic" do
      patch topic_url(@topic), params: { topic: { content: @topic.content, node_id: @topic.node_id, openid: @topic.openid, replies_count: @topic.replies_count, title: @topic.title, user_id: @topic.user_id } }
      assert_redirected_to topic_path(@topic)
    end

    test "should destroy topic" do
      assert_difference('Topic.count', -1) do
        delete topic_url(@topic)
      end

      assert_redirected_to topics_path
    end
  end
end
