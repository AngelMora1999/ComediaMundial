json.extract! channel, :id, :title, :description, :avatar, :cover, :visit_count, :user_id, :created_at, :updated_at
json.url channel_url(channel, format: :json)
