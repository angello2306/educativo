json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :lname, :fname, :dni, :birthday, :address, :phone
  json.url admin_teacher_url(teacher, format: :json)
end