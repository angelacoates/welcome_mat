class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :bedrooms
      t.string :bathroms
      t.integer :squarefoot
      t.integer :price
      t.string :description
      t.string :year_built
      t.integer :created_by
      t.text :image_data

      t.timestamps
    end
  end
end
