class Tag < ActiveRecord::Base
  validates :channel, presence: true
  validates :channel_id, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :channel

  has_and_belongs_to_many :pull_requests

  delegate :count, to: :pull_requests, prefix: true
end
