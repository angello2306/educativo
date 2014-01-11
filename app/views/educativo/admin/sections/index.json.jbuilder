json.array!(@sections) do |section|
  json.extract! section, :id, :name, :grade_id
  json.url admin_section_url(section, format: :json)
end