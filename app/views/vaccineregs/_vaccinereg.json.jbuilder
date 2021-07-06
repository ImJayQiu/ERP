json.extract! vaccinereg, :id, :firstname, :lastname, :idpass, :birthday, :gender, :email, :phone, :country, :province, :city, :address, :zipcode, :insurancecompany, :insuranceid, :healthcondition, :currentmedication, :allergies, :covidhistory, :coviddetail, :remark, :declare, :created_at, :updated_at
json.url vaccinereg_url(vaccinereg, format: :json)
