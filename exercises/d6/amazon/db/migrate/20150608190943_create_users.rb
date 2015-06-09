class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :billing_address
      t.string :shipping_address
      t.string :payment_type
      t.int :credit_card_num

      t.timestamps null: false
    end
  end
end
