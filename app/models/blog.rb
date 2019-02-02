class Blog < ApplicationRecord
  has_many :topics
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
end
