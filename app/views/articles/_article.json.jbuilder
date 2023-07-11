json.extract! article, :id, :title, :picture, :description, :client_id, :created_at, :updated_at
json.url article_url(article, format: :json)
