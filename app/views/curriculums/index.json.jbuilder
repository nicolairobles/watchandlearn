json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :title, :description, :level, :user_id, :topic_id
  json.url curriculum_url(curriculum, format: :json)
end
