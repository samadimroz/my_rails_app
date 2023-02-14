json.extract! studentdatum, :id, :name, :age, :image, :address, :rno, :mobile, :course, :created_at, :updated_at
json.url studentdatum_url(studentdatum, format: :json)
