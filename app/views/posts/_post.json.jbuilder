json.extract! post, :id, :title, :body, :visible, :created_at, :updated_at
json.url post_url(post, format: :json)
