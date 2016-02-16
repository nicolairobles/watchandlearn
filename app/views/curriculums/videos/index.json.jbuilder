json.array!(@videos) do |video|
  json.extract! video, :id, :urlID, :thumbnail, :position, :description, :title, :curriculum_id
  json.url video_url(video, format: :json)
end
