json.extract! news_item, :id, :title, :lead, :body, :created_at, :updated_at
json.url news_item_url(news_item, format: :json)
