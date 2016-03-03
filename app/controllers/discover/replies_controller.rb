require_dependency "discover/application_controller"

module Discover
  class RepliesController < ApplicationController
    before_action :login_required!
    def create
      @reply = Reply.new(reply_params.merge(user_id: current_user.id))

      if @reply.save
        redirect_to topic_path(reply_params[:topic_id]), :flash => { :success => "回复成功！" }
      else
        @topic = Topic.find(reply_params[:topic_id])
        @replies = @topic.replies
        render 'discover/topics/show'
      end
    end

    private
      # Only allow a trusted parameter "white list" through.
      def reply_params
        params.require(:reply).permit(:content, :topic_id)
      end
  end
end
