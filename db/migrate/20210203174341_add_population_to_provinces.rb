class AddPopulationToProvinces < ActiveRecord::Migration[6.0]
  def change
    add_column :provinces, :pupulation, :integer
  end
end
