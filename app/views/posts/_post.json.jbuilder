json.extract! post, :id, :title, :body, :user_id, :integer, :created_at, :updated_at
json.url post_url(post, format: :json)