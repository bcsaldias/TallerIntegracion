class Comment < ApplicationRecord
  validates :news_item, :body, :author, :presence => true
  belongs_to :news_item
end
