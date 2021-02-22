class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.timestamps
    end
  end
end
