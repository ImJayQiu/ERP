class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.text :polygon
      t.string :remark

      t.timestamps
    end
  end
end
