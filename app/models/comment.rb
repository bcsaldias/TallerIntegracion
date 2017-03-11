class Comment < ApplicationRecord
  validates :new_item, :body, :author, :presence => true
  belongs_to :new_item
end
