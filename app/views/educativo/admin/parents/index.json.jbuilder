json.array!(@parents) do |parent|
  json.extract! parent, :id, :student_id, :lname, :fname, :dni
  json.url admin_parent_url(parent, format: :json)
end