class CreateLivingsupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :livingsupplies do |t|
      t.datetime :date
      t.string :item
      t.integer :quantity
      t.string :unit
      t.string :province
      t.text :remark

      t.timestamps
    end
  end
end
