class NewsItem < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :lead, length: {maximum: 250}, allow_blank: true

  def count_comments
    Comment.where(:news_item_id => self.id).count
  end
 

  
  #def index_view
  #	@selected_news = NewsItem.order('created_at DESC').limit(10)


end
