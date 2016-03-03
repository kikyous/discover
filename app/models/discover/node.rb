module Discover
  class Node < ApplicationRecord
    def to_s
      name
    end
  end
end
