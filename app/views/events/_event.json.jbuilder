json.extract! event, :id, :name, :starttime, :endtime, :community_id, :created_at, :updated_at
json.url event_url(event, format: :json)
