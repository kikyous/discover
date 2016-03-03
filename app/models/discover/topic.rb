module Discover
  class Topic < ApplicationRecord
    has_many :replies, dependent: :destroy
    belongs_to :user
    belongs_to :node

    validates :title, presence: true, length: 5..100
    validates :content, presence: true, length: 5..1000
  end
end
