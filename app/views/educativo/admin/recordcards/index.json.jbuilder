json.array!(@recordcards) do |recordcard|
  json.extract! recordcard, :id, :level_id, :grade_id, :section_id, :course_id, :student_id, :p1, :p2, :p3, :p4, :em, :eb
  json.url admin_recordcard_url(recordcard, format: :json)
end