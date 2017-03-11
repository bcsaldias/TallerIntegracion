json.extract! new_item, :id, :title, :lead, :body, :created_at, :updated_at
json.url new_item_url(new_item, format: :json)
