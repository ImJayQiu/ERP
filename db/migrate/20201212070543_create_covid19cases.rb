class CreateCovid19cases < ActiveRecord::Migration[6.0]
  def change
    create_table :covid19cases do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :nationality
      t.string :qua_province
      t.date :notification_date
      t.date :announce_date
      t.string :onset_province
      t.string :onset_district
      t.string :status
      t.string :id_pass
      t.string :remark1
      t.string :remark2

      t.timestamps
    end
  end
end
