json.extract! event, :id, :title, :teaser, :topic_id, :date, :time, :place, :link, :created_at, :updated_at
json.url event_url(event, format: :json)
