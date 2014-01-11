json.array!(@courses) do |course|
  json.extract! course, :id, :name, :level_id, :grade_id
  json.url admin_course_url(course, format: :json)
end