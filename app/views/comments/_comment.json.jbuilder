json.extract! comment, :id, :author, :body, :news_item_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
