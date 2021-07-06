json.extract! covid19case, :id, :name, :age, :sex, :nationality, :qua_province, :notification_date, :announce_date, :onset_province, :onset_district, :status, :id_pass, :remark1, :remark2, :created_at, :updated_at
json.url covid19case_url(covid19case, format: :json)
