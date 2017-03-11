class NewsPaperController < ApplicationController
  def index

  	@news_items = NewsItem.index_formatted_list

  end
end
