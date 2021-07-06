json.extract! countryinfo, :id, :name, :ISO, :lon, :lat, :zoom, :remark, :created_at, :updated_at
json.url countryinfo_url(countryinfo, format: :json)
