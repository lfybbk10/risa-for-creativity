class Comment < ApplicationRecord
  validates_presence_of :content_id, :user_id, :text, :rating
end