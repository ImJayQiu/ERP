class CreateVaccineregs < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccineregs do |t|
      t.string :firstname
      t.string :lastname
      t.string :idpass
      t.date :birthday
      t.string :gender
      t.string :email
      t.string :phone
      t.string :country
      t.string :province
      t.string :city
      t.text :address
      t.string :zipcode
      t.string :insurancecompany
      t.string :insuranceid
      t.text :healthcondition
      t.string :currentmedication
      t.text :allergies
      t.string :covidhistory
      t.text :coviddetail
      t.text :remark
      t.string :declare

      t.timestamps
    end
  end
end
