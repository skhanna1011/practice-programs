json.extract! instructor, :id, :name, :mobile_no, :bio, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
