class CreateCountryinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :countryinfos do |t|
      t.string :name
      t.string :ISO
      t.string :lon
      t.string :lat
      t.string :zoom
      t.string :remark

      t.timestamps
    end
  end
end
