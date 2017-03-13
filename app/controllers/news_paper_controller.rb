class NewsPaperController < ApplicationController
  def index

  	@news_items = NewsItem.limit(10).formatted_list

  end
end
