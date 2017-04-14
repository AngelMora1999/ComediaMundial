json.extract! video, :id, :title, :description, :code, :visit_count, :channel_id, :created_at, :updated_at
json.url video_url(video, format: :json)
