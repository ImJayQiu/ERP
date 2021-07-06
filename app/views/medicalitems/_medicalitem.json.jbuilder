json.extract! medicalitem, :id, :name, :des, :remark, :created_at, :updated_at
json.url medicalitem_url(medicalitem, format: :json)
