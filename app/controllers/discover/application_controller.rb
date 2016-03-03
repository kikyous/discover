module Discover
  class ApplicationController < ::ApplicationController
    def login_required!
      unless current_user
        flash[:danger] = '请先登录'
        redirect_to topics_path
      end
    end
  end
end
