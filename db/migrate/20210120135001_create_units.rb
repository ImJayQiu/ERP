class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.text :des
      t.text :remark

      t.timestamps
    end
  end
end
