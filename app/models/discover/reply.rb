module Discover
  class Reply < ApplicationRecord
    belongs_to :topic, touch: true
    belongs_to :user
    validates :content, presence: true, length: 5..1000
  end
end
