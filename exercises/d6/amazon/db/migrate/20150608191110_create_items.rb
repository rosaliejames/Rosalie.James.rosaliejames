class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :vendor
      t.boolean :in_stock
      t.float :price

      t.timestamps null: false
    end
  end
end
