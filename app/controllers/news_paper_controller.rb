class NewsPaperController < ApplicationController
  def index

  	@news_items = NewsItem.order('created_at DESC').limit(10)

  end
end
