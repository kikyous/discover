module Discover
  class User < ::User
    DEFAULT_AVATAR = '/assets/discover/gravatar-logo-512.jpg'
    has_many :topics
    has_many :replies
    def avatar
      method(:avatar).super_method&.call || DEFAULT_AVATAR
    end
  end
end
