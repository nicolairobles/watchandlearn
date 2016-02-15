json.array!(@videos) do |video|
  json.extract! video, :id, :urlID, :thumbnail, :order, :description, :title, :curriculum_id
  json.url video_url(video, format: :json)
end
