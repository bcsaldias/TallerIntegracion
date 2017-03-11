json.extract! comment, :id, :author, :body, :new_item_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
