json.array!(@votes) do |vote|
  json.extract! vote, :id, :value, :user_id, :video_id, :curriculum_id
  json.url vote_url(vote, format: :json)
end
