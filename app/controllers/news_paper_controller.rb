class NewsPaperController < ApplicationController
  def index

  	@news_items = NewsItem.all.limit(10)

  end
end
