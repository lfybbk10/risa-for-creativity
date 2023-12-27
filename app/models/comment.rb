class Comment < ApplicationRecord
  validates_presence_of :content_id, :user_id, :text, :rating
  validates :rating, presence: true, numericality: { only_integer: true }
end