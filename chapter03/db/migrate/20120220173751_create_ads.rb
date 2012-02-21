class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :seller_id
      t.string :email
      t.string :img_url

      t.timestamps
    end
  end
end
