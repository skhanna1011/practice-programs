json.extract! article, :id, :title, :body, :user_id, :allow_comments, :created_at, :updated_at
json.url article_url(article, format: :json)
