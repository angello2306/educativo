json.array!(@students) do |student|
  json.extract! student, :id, :lname, :fname, :birthday, :address, :phone, :photo
  json.url admin_student_url(student, format: :json)
end