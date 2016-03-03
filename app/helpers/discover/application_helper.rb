module Discover
  module ApplicationHelper
    %i(new_user_session_path destroy_user_session_path new_user_registration_path user_path).each do |h|
      define_method h do |*args|
        if main_app.respond_to?(h)
          main_app.send(h, args)
        end
      end
    end
  end
end
