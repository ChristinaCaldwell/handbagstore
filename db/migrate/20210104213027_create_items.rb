class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :brand
      t.string :product_id
      t.string :dimensions
      t.string :composition

      t.timestamps
    end
  end
end
