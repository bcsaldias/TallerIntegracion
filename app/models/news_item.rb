class NewsItem < ApplicationRecord
  has_many :comments
  validates :lead, length: {maximum: 250}, allow_blank: true

  def comments
    Comment.where(:news_item_id => self.id)
  end
  
  def count_comments
    self.comments.count
  end



end
