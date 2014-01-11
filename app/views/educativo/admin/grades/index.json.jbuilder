json.array!(@grades) do |grade|
  json.extract! grade, :id, :name, :level_id
  json.url admin_grade_url(grade, format: :json)
end