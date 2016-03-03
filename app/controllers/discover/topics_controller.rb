require_dependency "discover/application_controller"

module Discover
  class TopicsController < ApplicationController
    before_action :set_topic, only: [:show, :edit, :update, :destroy]
    before_action :login_required!, only: [:udpate, :destroy, :create]

    # GET /topics
    def index
      @topics = Topic.order('updated_at DESC').page(params[:page]).per 3
    end

    # GET /topics/1
    def show
      @replies = @topic.replies
      @reply = Reply.new(topic: @topic)
    end

    # GET /topics/new
    def new
      @topic = Topic.new
    end

    # GET /topics/1/edit
    def edit
    end

    # POST /topics
    def create
      @topic = Topic.new(topic_params.merge(user_id: current_user.id))

      if @topic.save
        redirect_to @topic, :flash => { :success => "创建成功！" }
      else
        render :new
      end
    end

    # PATCH/PUT /topics/1
    def update
      if @topic.update(topic_params)
        redirect_to @topic, notice: 'Topic was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /topics/1
    def destroy
      @topic.destroy
      redirect_to topics_url, notice: 'Topic was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_topic
        @topic = Topic.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def topic_params
        params.require(:topic).permit(:title, :content, :user_id, :openid, :node_id, :replies_count)
      end
  end
end
